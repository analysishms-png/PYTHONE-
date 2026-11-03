"""Banquet Operations UI (VB6: Banquet menu -> Operation leaves).

VB6 forms covered:
  - HallBill.frm            -> Banquet Billing
  - HallEstimate.frm        -> Banquet Estimate Billing
  - HallAdvanceDepDialog    -> Banquet Booking Advance
  - BanqAvailability.frm    -> Venue Availability
  - HallChefPreCosting.frm  -> Chef Pre-Costing
  - HallSundry.frm          -> Banquet Bill Sundry Setting
  - frmGuestComments.frm    -> Guest Comments
  - HallBooking.frm         -> Banquet Booking (open_banquet_booking)

Live tables (verified): HallSale1(21), HallBook(97), PayChargeH(11079),
VenueOcc(150), VenueMast(10), HallPreCosting(0), CatalogMast(0),
SundryTypeFix(9), SundryMast(19), GuestComments(0).

Run: python -m HMS_py.ui.banquet_ops_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont, QKeySequence, QShortcut
from PyQt6.QtWidgets import (QApplication, QComboBox, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout)

from HMS_py.core import db
from HMS_py.core import banquet_ops as bops

SITE_CODE = bops.SITE_CODE

# PayCode options (live PayChargeH AD series frequency)
AD_PAYCODES = [
    ("KKCASH", "Cash"),
    ("KK0004", "Cheque"),
    ("KKVISA", "Credit Card"),
    ("KK0006", "Other"),
]


def _cell(val, fg: str = "") -> QTableWidgetItem:
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if fg:
        it.setForeground(QColor(fg))
    return it


def _rows_to_dicts(rows) -> list[dict]:
    """pyodbc.Row list -> list[dict] (generic, column names se)."""
    if not rows:
        return []
    cols = [d[0] for d in rows[0].cursor_description]
    return [dict(zip(cols, tuple(r))) for r in rows]


def _fill(tbl: QTableWidget, rows: list[dict], keys: list[str] | None = None):
    if not keys and rows:
        keys = list(rows[0].keys())
    keys = keys or []
    tbl.setColumnCount(len(keys))
    tbl.setHorizontalHeaderLabels(keys)
    tbl.setRowCount(len(rows))
    for r, rec in enumerate(rows):
        for c, k in enumerate(keys):
            tbl.setItem(r, c, _cell(rec.get(k)))


class ListDialog(QDialog):
    """Generic read-only banquet list: loader() -> list[dict]."""

    def __init__(self, parent, title: str, loader, keys: list[str] | None = None):
        super().__init__(parent)
        self.loader = loader
        self.keys = keys
        self.setWindowTitle(f"{title} - HMS_py")
        self.resize(980, 560)
        root = QVBoxLayout(self)

        bar = QHBoxLayout()
        btnRefresh = QPushButton("Refresh")
        btnRefresh.setFont(QFont("Segoe UI", 10))
        btnRefresh.setToolTip("Reload data from database (F5)")
        btnRefresh.clicked.connect(self.reload)
        btnExit = QPushButton("Exit")
        btnExit.setFont(QFont("Segoe UI", 10))
        btnExit.clicked.connect(self.reject)
        bar.addWidget(btnRefresh)
        bar.addStretch(1)
        bar.addWidget(btnExit)
        root.addLayout(bar)

        self.tbl = QTableWidget(0, 0)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        self.lblState = QLabel("Ready (read-only)")
        self.lblState.setFont(QFont("Segoe UI", 9))
        root.addWidget(self.lblState)

        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        self.reload()

    def reload(self):
        try:
            rows = self.loader()
        except Exception as ex:
            QMessageBox.critical(self, "Error", f"Load failed:\n{ex}")
            rows = []
        _fill(self.tbl, rows, self.keys)
        self.lblState.setText(f"{len(rows)} rows | read-only")


# ============================================================
# Banquet Billing (VB6 HallBill.frm)
# ============================================================

class BanquetBillingDialog(QDialog):
    """HallSale1 bill list + create bill from booking (VB6 HallBill)."""

    COLS = ["docid", "vno", "vdate", "party", "rest", "total", "netamt",
            "advance", "bookdocid"]
    HEADS = ["DocId", "VNo", "Date", "Party", "Rest", "Total", "NetAmt",
             "Advance", "BookDocId"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Banquet Billing - HMS_py")
        self.resize(1040, 600)
        root = QVBoxLayout(self)

        bar = QHBoxLayout()
        btnNew = QPushButton("New Bill from Booking")
        btnNew.setFont(QFont("Segoe UI", 10))
        btnNew.setToolTip("HallSale1 banaye selected booking se (IDC/ODC)")
        btnNew.clicked.connect(self._on_new_bill)
        btnLines = QPushButton("Bill Lines (HallSale2)")
        btnLines.setFont(QFont("Segoe UI", 10))
        btnLines.clicked.connect(self._on_lines)
        btnRefresh = QPushButton("Refresh")
        btnRefresh.clicked.connect(self.reload)
        btnExit = QPushButton("Exit")
        btnExit.clicked.connect(self.reject)
        for b in (btnNew, btnLines, btnRefresh):
            bar.addWidget(b)
        bar.addStretch(1)
        bar.addWidget(btnExit)
        root.addLayout(bar)

        self.tbl = QTableWidget(0, len(self.HEADS))
        self.tbl.setHorizontalHeaderLabels(self.HEADS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        self.lblState = QLabel("Ready")
        self.lblState.setFont(QFont("Segoe UI", 9))
        root.addWidget(self.lblState)

        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        self.reload()

    def reload(self):
        try:
            rows = bops.hallsale1_list()
        except Exception as ex:
            QMessageBox.critical(self, "Error", f"Load failed:\n{ex}")
            rows = []
        _fill(self.tbl, rows, self.COLS)
        self.lblState.setText(f"{len(rows)} banquet bills")

    def _selected_docid(self) -> str | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        it = self.tbl.item(r, 0)
        return it.text() if it else None

    def _on_new_bill(self):
        dlg = QDialog(self)
        dlg.setWindowTitle("New Banquet Bill")
        form = QFormLayout(dlg)
        edBook = QLineEdit()
        edBook.setPlaceholderText("Booking DocId (DKKIBOOK ...)")
        form.addRow("Booking DocId:", edBook)
        cbVtype = QComboBox()
        cbVtype.addItems(["IDC", "ODC"])
        form.addRow("VType:", cbVtype)
        edRest = QLineEdit("KKBANQ")
        form.addRow("RestCode:", edRest)
        btnOk = QPushButton("Create Bill")
        btnOk.clicked.connect(dlg.accept)
        btnCancel = QPushButton("Cancel")
        btnCancel.clicked.connect(dlg.reject)
        h = QHBoxLayout()
        h.addWidget(btnOk)
        h.addWidget(btnCancel)
        form.addRow(h)
        if dlg.exec() != QDialog.DialogCode.Accepted:
            return
        bookdocid = edBook.text().strip()
        if not bookdocid:
            QMessageBox.warning(self, "New Bill", "Booking DocId zaroori hai")
            return
        try:
            cn = db.connect()
            try:
                docid = bops.hallsale1_create_from_booking(
                    bookdocid, cbVtype.currentText(), edRest.text().strip(),
                    cn=cn, commit=True)
            finally:
                cn.close()
            QMessageBox.information(self, "New Bill", f"Bill bana: {docid}")
            self.reload()
        except Exception as ex:
            QMessageBox.critical(self, "New Bill", f"Failed:\n{ex}")

    def _on_lines(self):
        docid = self._selected_docid()
        if not docid:
            QMessageBox.information(self, "Bill Lines",
                                    "Pehle bill row select karo")
            return
        try:
            rows = bops.hallsale2_lines(docid)
        except Exception as ex:
            QMessageBox.critical(self, "Bill Lines", f"Load failed:\n{ex}")
            return
        ListDialog(self, f"Bill Lines - {docid}", lambda: rows).exec()


# ============================================================
# Banquet Estimate Billing (VB6 HallEstimate.frm)
# ============================================================

class BanquetEstimateDialog(QDialog):
    """Booking DocId -> estimate preview (read-only amounts)."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Banquet Estimate Billing - HMS_py")
        self.resize(900, 560)
        root = QVBoxLayout(self)

        bar = QHBoxLayout()
        bar.addWidget(QLabel("Booking DocId:"))
        self.edBook = QLineEdit()
        self.edBook.setPlaceholderText("DKKIBOOK ...")
        bar.addWidget(self.edBook)
        btnPrev = QPushButton("Preview")
        btnPrev.clicked.connect(self._on_preview)
        bar.addWidget(btnPrev)
        btnExit = QPushButton("Exit")
        btnExit.clicked.connect(self.reject)
        bar.addStretch(1)
        bar.addWidget(btnExit)
        root.addLayout(bar)

        self.lblAmt = QLabel("-")
        self.lblAmt.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        self.lblAmt.setWordWrap(True)
        root.addWidget(self.lblAmt)

        self.tbl = QTableWidget(0, 0)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        self.lblState = QLabel("Booking DocId daal ke Preview dabao")
        self.lblState.setFont(QFont("Segoe UI", 9))
        root.addWidget(self.lblState)

        QShortcut(QKeySequence("Return"), self.edBook, activated=self._on_preview)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

    def _on_preview(self):
        bookdocid = self.edBook.text().strip()
        if not bookdocid:
            QMessageBox.warning(self, "Estimate", "Booking DocId zaroori hai")
            return
        try:
            res = bops.hall_estimate_preview(bookdocid)
        except Exception as ex:
            QMessageBox.critical(self, "Estimate", f"Failed:\n{ex}")
            return
        amt = res["amounts"]
        bk = res["booking"]
        self.lblAmt.setText(
            f"Party: {bk.get('party','')} | Total: {amt['total']:,.2f} | "
            f"NetAmt: {amt['netamt']:,.2f} | "
            f"Advance: {res['advance_received']:,.2f} | "
            f"Billed: {res['billed_so_far']:,.2f} | "
            f"Balance: {res['balance_due']:,.2f}")
        lines = res["lines"]
        if lines:
            _fill(self.tbl, lines)
        else:
            _fill(self.tbl, [{
                "note": "HallBook1 me koi item nahi - header totals use kiye",
                "total": amt["total"], "netamt": amt["netamt"],
                "discamt": amt["discamt"], "tax": amt["tax"],
            }])
        self.lblState.setText(
            f"{len(lines)} booking lines | estimate preview (read-only)")


# ============================================================
# Banquet Booking Advance (VB6 HallAdvanceDepDialog)
# ============================================================

class BanquetAdvanceDialog(QDialog):
    """Advance receive/list against a banquet booking -> PayChargeH AD."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Banquet Booking Advance - HMS_py")
        self.resize(960, 600)
        root = QVBoxLayout(self)

        form = QFormLayout()
        self.edBook = QLineEdit()
        self.edBook.setPlaceholderText("Booking DocId (DKKIBOOK ...)")
        form.addRow("Booking DocId:", self.edBook)
        self.edAmount = QLineEdit()
        self.edAmount.setPlaceholderText("e.g. 10001")
        form.addRow("Amount:", self.edAmount)
        self.cbPay = QComboBox()
        for code, label in AD_PAYCODES:
            self.cbPay.addItem(f"{label} ({code})", code)
        form.addRow("Pay Mode:", self.cbPay)
        root.addLayout(form)

        bar = QHBoxLayout()
        btnLoad = QPushButton("Load Advances")
        btnLoad.clicked.connect(self.reload)
        btnRecv = QPushButton("Receive Advance")
        btnRecv.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        btnRecv.setToolTip("PayChargeH me AD voucher banata hai "
                           "(base + 2.5% CGST + 2.5% SGST)")
        btnRecv.clicked.connect(self._on_receive)
        btnExit = QPushButton("Exit")
        btnExit.clicked.connect(self.reject)
        for b in (btnLoad, btnRecv):
            bar.addWidget(b)
        bar.addStretch(1)
        bar.addWidget(btnExit)
        root.addLayout(bar)

        self.tbl = QTableWidget(0, 0)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        self.lblTotal = QLabel("Total advance: 0.00")
        self.lblTotal.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        root.addWidget(self.lblTotal)

        QShortcut(QKeySequence("Escape"), self, activated=self.reject)

    def reload(self):
        bookdocid = self.edBook.text().strip()
        if not bookdocid:
            self.tbl.setRowCount(0)
            self.lblTotal.setText("Booking DocId daalo")
            return
        try:
            rows = bops.hall_advance_get(bookdocid)
            total = bops.hall_advance_total(bookdocid)
        except Exception as ex:
            QMessageBox.critical(self, "Advance", f"Load failed:\n{ex}")
            return
        _fill(self.tbl, rows)
        self.lblTotal.setText(f"Total advance: {total:,.2f}")

    def _on_receive(self):
        bookdocid = self.edBook.text().strip()
        if not bookdocid:
            QMessageBox.warning(self, "Advance", "Booking DocId zaroori hai")
            return
        try:
            amount = float(self.edAmount.text().strip())
        except ValueError:
            QMessageBox.warning(self, "Advance", "Amount sahi daalo")
            return
        paycode = self.cbPay.currentData()
        if QMessageBox.question(
                self, "Receive Advance",
                f"Booking {bookdocid} pe {amount:,.2f} ({paycode}) receive karein?"
        ) != QMessageBox.StandardButton.Yes:
            return
        try:
            cn = db.connect()
            try:
                res = bops.hall_advance_receive(bookdocid, amount, paycode,
                                                cn=cn, commit=True)
            finally:
                cn.close()
            QMessageBox.information(
                self, "Advance",
                f"AD voucher {res['docid']} (VNo {res['vno']})\n"
                f"CGST {res['cgst']:.2f} + SGST {res['sgst']:.2f}, "
                f"total {res['total']:,.2f}")
            self.edAmount.clear()
            self.reload()
        except Exception as ex:
            QMessageBox.critical(self, "Advance", f"Failed:\n{ex}")


# ============================================================
# Guest Comments (VB6 frmGuestComments.frm)
# ============================================================

class GuestCommentsDialog(QDialog):
    """GuestComments list + Add/Delete (Code = site + 4-digit serial)."""

    COLS = ["Code", "Name", "City", "MobileNo", "FuncType", "Company",
            "Comments", "U_EntDt"]
    HEADS = ["Code", "Name", "City", "Mobile", "FuncType", "Company",
             "Comments", "Entry Date"]

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Guest Comments - HMS_py")
        self.resize(980, 600)
        root = QVBoxLayout(self)

        form = QFormLayout()
        self.edName = QLineEdit()
        form.addRow("Name:", self.edName)
        self.edCity = QLineEdit()
        form.addRow("City:", self.edCity)
        self.edMobile = QLineEdit()
        form.addRow("Mobile:", self.edMobile)
        self.edComment = QLineEdit()
        form.addRow("Comment:", self.edComment)
        root.addLayout(form)

        bar = QHBoxLayout()
        btnAdd = QPushButton("Add")
        btnAdd.setFont(QFont("Segoe UI", 10))
        btnAdd.clicked.connect(self._on_add)
        btnDel = QPushButton("Delete")
        btnDel.clicked.connect(self._on_del)
        btnRefresh = QPushButton("Refresh")
        btnRefresh.clicked.connect(self.reload)
        btnExit = QPushButton("Exit")
        btnExit.clicked.connect(self.reject)
        for b in (btnAdd, btnDel, btnRefresh):
            bar.addWidget(b)
        bar.addStretch(1)
        bar.addWidget(btnExit)
        root.addLayout(bar)

        self.tbl = QTableWidget(0, len(self.HEADS))
        self.tbl.setHorizontalHeaderLabels(self.HEADS)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl)

        self.lblState = QLabel("Ready")
        self.lblState.setFont(QFont("Segoe UI", 9))
        root.addWidget(self.lblState)

        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        self.reload()

    def reload(self):
        try:
            rows = _rows_to_dicts(db.query(
                "SELECT TOP 500 Code, Name, City, MobileNo, FuncType, "
                "Company, Comments, U_EntDt FROM GuestComments "
                "ORDER BY U_EntDt DESC"))
        except Exception as ex:
            QMessageBox.critical(self, "Error", f"Load failed:\n{ex}")
            rows = []
        _fill(self.tbl, rows, self.COLS)
        self.lblState.setText(f"{len(rows)} guest comments")

    def _selected_code(self) -> str | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        it = self.tbl.item(r, 0)
        return it.text() if it else None

    def _on_add(self):
        name = self.edName.text().strip()
        if not name:
            QMessageBox.warning(self, "Add", "Name zaroori hai")
            return
        try:
            # VB6 frmGuestComments.frm:478
            # Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1
            # Code = 2-char prefix + Format(n,"0000")  (frm line 483)
            rows = db.query(
                "SELECT IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 "
                "AS MyCode FROM GuestComments")
            nxt = int(rows[0][0] or 1)
            code = f"{SITE_CODE}{nxt:04d}"
            # INSERT cols per frmGuestComments.frm:493
            db.execute(
                "INSERT INTO GuestComments (Code, Name, City, MobileNo, "
                "Comments, DatenTime, Site_Code, U_Name, U_EntDt, U_AE, "
                "LogSite_Code) VALUES (?, ?, ?, ?, ?, getdate(), ?, ?, "
                "getdate(), 'A', ?)",
                (code, name, self.edCity.text().strip(),
                 self.edMobile.text().strip(), self.edComment.text().strip(),
                 SITE_CODE, db.get_user(), SITE_CODE))
            QMessageBox.information(self, "Add", f"Comment save: {code}")
            self.edName.clear()
            self.edCity.clear()
            self.edMobile.clear()
            self.edComment.clear()
            self.reload()
        except Exception as ex:
            QMessageBox.critical(self, "Add", f"Failed:\n{ex}")

    def _on_del(self):
        code = self._selected_code()
        if not code:
            QMessageBox.information(self, "Delete", "Pehle row select karo")
            return
        if QMessageBox.question(
                self, "Delete",
                f"Comment {code} delete karein?"
        ) != QMessageBox.StandardButton.Yes:
            return
        try:
            db.execute("DELETE FROM GuestComments WHERE Code = ?", (code,))
            self.reload()
        except Exception as ex:
            QMessageBox.critical(self, "Delete", f"Failed:\n{ex}")


# ============================================================
# Openers (shell.py registry ke liye)
# ============================================================

def open_banquet_billing(parent=None) -> BanquetBillingDialog:
    dlg = BanquetBillingDialog(parent)
    dlg.exec()
    return dlg


def open_banquet_estimate(parent=None) -> BanquetEstimateDialog:
    dlg = BanquetEstimateDialog(parent)
    dlg.exec()
    return dlg


def open_banquet_advance(parent=None) -> BanquetAdvanceDialog:
    dlg = BanquetAdvanceDialog(parent)
    dlg.exec()
    return dlg


def open_guest_comments(parent=None) -> GuestCommentsDialog:
    dlg = GuestCommentsDialog(parent)
    dlg.exec()
    return dlg


def open_banquet_booking(parent=None):
    """VB6 HallBooking.frm -> hall_booking_ui."""
    from HMS_py.ui import hall_booking_ui as hall_ui
    dlg = hall_ui.open_hall_booking(parent)
    return dlg


def open_venue_availability(parent=None):
    """VB6 BanqAvailability.frm -> VenueOcc + VenueMast (read-only)."""
    def loader():
        occ = bops.venueocc_list()
        names = {r.Code: r.Name for r in db.query(
            "SELECT Code, Name FROM VenueMast")}
        for o in occ:
            o["venue_name"] = names.get(o.get("venue", ""), "")
        return occ
    dlg = ListDialog(parent, "Venue Availability", loader,
                     keys=["fpdocid", "venue", "venue_name", "fromdate",
                           "todate", "fromtime", "totime", "u_name"])
    dlg.exec()
    return dlg


def open_chef_precosting(parent=None):
    """VB6 HallChefPreCosting.frm -> HallPreCosting (read-only)."""
    def loader():
        return _rows_to_dicts(db.query(
            "SELECT TOP 200 Docid, Sno, Vtype, Vno, Vdate, RestCode, Item, "
            "Qty, Rate, Amount, Waiter, KOTType, U_Name, U_EntDt "
            "FROM HallPreCosting ORDER BY Vdate DESC, Docid DESC"))
    dlg = ListDialog(parent, "Chef Pre-Costing", loader)
    dlg.exec()
    return dlg


def open_catalog_selection(parent=None):
    """HallMenuCatalog/CatalogMast list (read-only)."""
    def loader():
        return _rows_to_dicts(db.query(
            "SELECT TOP 200 Code, ItemCode, RestCode, Name, ItemCatCode, "
            "Category FROM CatalogMast ORDER BY Code"))
    dlg = ListDialog(parent, "Catalog Selection", loader)
    dlg.exec()
    return dlg


def open_banquet_sundry_setting(parent=None):
    """VB6 HallSundry.frm:2507 - SundryTypeFix JOIN SundryMast."""
    def loader():
        return _rows_to_dicts(db.query(
            "SELECT SF.SNo, SF.SundryCode, SM.Name AS SundryName, "
            "SF.DispName, SF.CalcFormula, SF.PerOrAmt, SF.SValue, "
            "SF.Limit, SF.Nature, SF.CalcSign, SF.SysYN "
            "FROM SundryTypeFix SF "
            "INNER JOIN SundryMast SM ON SF.SundryCode = SM.Code "
            "ORDER BY SF.SNo"))
    dlg = ListDialog(parent, "Banquet Bill Sundry Setting", loader)
    dlg.exec()
    return dlg


def open_banquet_settlement(parent=None):
    """HallSale1 + PayChargeH received/balance (VB6 HallBill settlement)."""
    def loader():
        return _rows_to_dicts(db.query(
            "SELECT h.DocId, h.VNo, h.Vdate, h.Party, h.NetAmt, "
            "ISNULL((SELECT SUM(p.AmtCr - p.AmtDr) FROM PayChargeH p "
            " WHERE p.ContraDocID IN (h.DocId, h.BookDocId) "
            "   AND p.VType IN ('IDC','AD','AR') "
            "   AND p.Site_Code = h.Site_Code), 0) AS Received, "
            "h.NetAmt - ISNULL((SELECT SUM(p.AmtCr - p.AmtDr) "
            " FROM PayChargeH p WHERE p.ContraDocID IN (h.DocId, h.BookDocId) "
            " AND p.VType IN ('IDC','AD','AR') "
            " AND p.Site_Code = h.Site_Code), 0) AS Balance, "
            "h.BookDocId FROM HallSale1 h ORDER BY h.VNo DESC"))
    dlg = ListDialog(parent, "Banquet Settlement", loader)
    dlg.exec()
    return dlg


# ── Standalone run ──
if __name__ == "__main__":
    app = QApplication(sys.argv)
    dlg = BanquetBillingDialog()
    dlg.show()
    sys.exit(app.exec())

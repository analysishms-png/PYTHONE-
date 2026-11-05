"""Finance Sub-Forms UI (VB6: FaAdjust, FaAdjustDel, FaChqClear, FaTDSCertificate port)."""
from __future__ import annotations
import sys, os
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from PyQt6.QtWidgets import (QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTableWidget, QTableWidgetItem, QPushButton, QLineEdit, QLabel,
    QComboBox, QMessageBox, QGroupBox, QFormLayout, QDateEdit, QTabWidget,
    QDialog)
from PyQt6.QtCore import Qt, QDate
from PyQt6.QtGui import QColor, QFont
from core import fa_ledger_ops as falo
from core import fa_tds_ops as tds
from core import fa_voucher as fv
from ui.theme import palette


class FaAdjustWindow(QMainWindow):
    """Ledger Adjustment Entry (VB6: FaAdjust)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Ledger Adjustment Entry")
        self.resize(800, 500)
        self._build_ui()
        self._load_data()
        self._load_acgroup_names()
        
        # FIX #5: Set tab order matching VB6 TabIndex
        # VB6 order: TXT_DATE(0) -> TXT_ACCOUNT -> TXT_Group -> BTSADJUST(22) -> ADJ_OK(9) -> ADJ_CANCLE(8)
        # Create logical tab sequence
        self.setTabOrder(self.txt_docid1, self.txt_docid2)
        self.setTabOrder(self.txt_docid2, self.txt_sno1)
        self.setTabOrder(self.txt_sno1, self.txt_docid1)
        self.setTabOrder(self.txt_docid1, self.txt_sno2)
        self.setTabOrder(self.txt_sno2, self.txt_amt)
        self.setTabOrder(self.txt_amt, self.txt_subcode)
        self.setTabOrder(self.txt_subcode, self.btn_save)
        self.setTabOrder(self.btn_save, self.btn_exit)
        self.setTabOrder(self.btn_exit, self.table)
        self.setTabOrder(self.table, self.txt_docid1)

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Ledger Adjustment (Bill-wise)")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Adjustment Details")
        form_lay = QFormLayout(form)
        self.txt_docid1 = QLineEdit(); self.txt_docid1.setPlaceholderText("Debit DocId")
        self.txt_sno1 = QLineEdit(); self.txt_sno1.setPlaceholderText("Debit SNo")
        self.txt_docid2 = QLineEdit(); self.txt_docid2.setPlaceholderText("Credit DocId")
        self.txt_sno2 = QLineEdit(); self.txt_sno2.setPlaceholderText("Credit SNo")
        self.txt_amt = QLineEdit(); self.txt_amt.setPlaceholderText("Amount (0.00)")
        self.txt_amt.setValidator(None)
        from PyQt6.QtGui import QDoubleValidator, QValidator
        val = QDoubleValidator(0.0, 9999999999.99, 2, self.txt_amt)
        val.setNotation(QDoubleValidator.Notation.StandardNotation)
        self.txt_amt.setValidator(val)
        self.txt_subcode = QLineEdit(); self.txt_subcode.setPlaceholderText("SubCode")
        # FIX #2 (BUG #2): real ACGROUP search — VB6 DataCombo TXT_ACCOUNT
        # bound to ACGROUP via Proc_183_43_EF7D54 (name dikhao, code rakho).
        # QCompleter on live acgroup_list() — no hardcoded fallback.
        self._acgroup_map: dict[str, dict] = {}
        self._acgroup_names: list[str] = []
        self._load_acgroup_names()
        model = QStringListModel()
        model.setStringList(self._acgroup_names)
        self.txt_subcode.setPlaceholderText("SubCode/Group Name")
        completer = QCompleter(model)
        completer.setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
        completer.setFilterMode(Qt.MatchFlag.MatchContains)
        self.txt_subcode.setCompleter(completer)
        self.txt_subcode.textChanged.connect(self._on_subcode_change)
        self.txt_agref = QLineEdit(); self.txt_agref.setPlaceholderText("Adjustment Reference")
        form_lay.addRow("Debit DocId:", self.txt_docid1)
        form_lay.addRow("Debit SNo:", self.txt_sno1)
        form_lay.addRow("Credit DocId:", self.txt_docid2)
        form_lay.addRow("Credit SNo:", self.txt_sno2)
        form_lay.addRow("Amount:", self.txt_amt)
        form_lay.addRow("SubCode:", self.txt_subcode)
        form_lay.addRow("AgRefNo:", self.txt_agref)
        layout.addWidget(form)

        btn_lay = QHBoxLayout()
        self.btn_save = QPushButton("Save Adjustment")
        self.btn_save.setProperty("success", True)
        self.btn_save.setToolTip("Save the ledger adjustment entry")
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close this window")
        self.btn_save.clicked.connect(self._save)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_save); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

        self.table = QTableWidget()

    def _load_acgroup_names(self):
        """BUG #2 fix: live ACGROUP list (VB6 Proc_183_43_EF7D54 equivalent).
        VB6 SQL: SELECT GroupName,GroupCode FROM ACGROUP
                 WHERE (LOGSITE_CODE=? OR LOGSITE_CODE='HO') ORDER BY GroupName
        """
        from HMS_py.core import fa_masters_ops as fmo
        try:
            accounts = fmo.acgroup_list()
        except Exception:
            accounts = []
        self._acgroup_map = {}
        for a in accounts:
            self._acgroup_map[(a.get("name") or "").strip()] = a
            self._acgroup_map[(a.get("code") or "").strip()] = a
        self._acgroup_names = sorted(
            {(a.get("name") or "").strip() for a in accounts if a.get("name")})
        self.table.setColumnCount(6)
        self.table.setHorizontalHeaderLabels(
            ["DocId1", "SNo1", "DocId2", "SNo2", "Amount", "SubCode"])
        self.table.setAlternatingRowColors(True)
        layout.addWidget(self.table)

    def _load_data(self):
        try:
            rows = falo.ledgeradj_list()
            self.table.setRowCount(max(len(rows), 1))  # Ensure at least 1 row placeholder
            for i, r in enumerate(rows):
                for j, v in enumerate([r["docid1"], str(r["v_sno1"]), r["docid2"],
                                       str(r["v_sno2"]), str(r["cr"]), r["subcode"]]):
                    it = QTableWidgetItem(str(v))
                    it.setForeground(QColor(palette()["text"]))
                    self.table.setItem(i, j, it)
        except Exception: pass

    def _save(self):
        try:
            # BUG #1 fix (VB6 TXTADJ_AMT_Validate parity):
            # 1) numeric-only, non-empty amount (VB6 KeyPress filter)
            amt_text = self.txt_amt.text().strip()
            if not amt_text:
                QMessageBox.warning(self, "Adjustment", "Amount zaroori hai")
                self.txt_amt.setFocus()
                return
            try:
                amt = float(amt_text)
            except ValueError:
                QMessageBox.warning(self, "Adjustment",
                                    "Sirf numeric values allowed")
                self.txt_amt.setFocus()
                return
            if amt <= 0:
                QMessageBox.warning(self, "Adjustment",
                                    "Amount zero se bada hona chahiye")
                self.txt_amt.setFocus()
                return
            docid2 = self.txt_docid2.text().strip()
            try:
                sno2 = int(self.txt_sno2.text() or 0)
            except ValueError:
                QMessageBox.warning(self, "Adjustment", "Credit SNo numeric hona chahiye")
                return
            # 2) pending-adjustment check — VB6: CDbl(FgridAdjust.TextMatrix)
            #     < CDbl(var_158) -> "Amount is Greater Then Pendng Adj.Amt..."
            #     (FaAdjust.frm loc_117E543-117E6A9); core FA-12 adj_pending.
            pending_amt = falo.adj_pending(docid2, sno2)
            if amt > pending_amt:
                msg = (f" Amount is Greater Then Pendng Adj.Amt. "
                       f"You Can Adjust Only {pending_amt:.2f} Here")
                QMessageBox.warning(self, "Adjustment", msg)
                self.txt_amt.setFocus()
                return
            falo.ledgeradj_insert({
                "docid1": self.txt_docid1.text().strip(),
                "v_sno1": int(self.txt_sno1.text() or 0),
                "docid2": docid2,
                "v_sno2": sno2,
                "cr": amt,
                "subcode": self.txt_subcode.text().strip(),
                "agrefno": self.txt_agref.text().strip(),
            })
            QMessageBox.information(self, "Saved", "Adjustment saved!")
            self._load_data()
        except ValueError as e:
            QMessageBox.warning(self, "Adjustment", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))

    def _on_subcode_change(self):
        """Handle SubCode text changes - like VB6 DataCombo TXT_ACCOUNT UnknownEvent."""
        text = self.txt_subcode.text().strip()
        # Search logic equivalent of VB6 Proc_183_43_EF7D54
        from HMS_py.core import fa_ledger_ops as falo
        # BUG #2: live ACGROUP only — koi hardcoded fallback nahi
        try:
            accounts = falo.get_acgroup_list()
        except AttributeError:
            from HMS_py.core import fa_masters_ops as fmo
            accounts = fmo.acgroup_list()
        if accounts:
            # Find matching account
            for acct in accounts:
                if text.lower() in (acct.get("name") or "").lower() or text.lower() in (acct.get("code") or "").lower():
                    self.txt_subcode.setText(acct["name"])
                    self.txt_subcode.setToolTip(f"SubCode: {acct['code']}")
                    return
        # If no match, reset placeholder
        self.txt_subcode.setPlaceholderText("SubCode/Group Name")
        self.txt_subcode.setToolTip("")

    def resizeEvent(self, event):
        """Like VB6 Form_Resize - recalculate caption width based on form width."""
        # VB6: Me.LblFormCaption.Left = CDbl(0)
        # VB6: Me.LblFormCaption.Width = var_90 (form width)
        # Python equivalent: maintain proportional layout
        central = self.centralWidget()
        if central:
            central.setMinimumWidth(self.width())
            central.setMinimumHeight(max(self.height() * 0.8, 400))
        super().resizeEvent(event)


class FaChqClearWindow(QMainWindow):
    """Cheque Clearing Entry (VB6: FaChqClear)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Cheque Clearing")
        self.resize(700, 400)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("Cheque Clearing")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Cheque Details")
        form_lay = QFormLayout(form)
        self.txt_docid = QLineEdit(); self.txt_docid.setPlaceholderText("Voucher DocId")
        self.txt_sno = QLineEdit(); self.txt_sno.setPlaceholderText("Line SNo")
        self.dt_clg = QDateEdit(); self.dt_clg.setCalendarPopup(True)
        self.dt_clg.setDate(QDate.currentDate())
        self.txt_chq = QLineEdit(); self.txt_chq.setPlaceholderText("Cheque Number")
        self.dt_chq = QDateEdit(); self.dt_chq.setCalendarPopup(True)
        self.dt_chq.setDate(QDate.currentDate())
        form_lay.addRow("DocId:", self.txt_docid)
        form_lay.addRow("SNo:", self.txt_sno)
        form_lay.addRow("Clearing Date:", self.dt_clg)
        form_lay.addRow("Cheque No:", self.txt_chq)
        form_lay.addRow("Cheque Date:", self.dt_chq)
        layout.addWidget(form)

        btn_lay = QHBoxLayout()
        self.btn_save = QPushButton("Mark Cleared")
        self.btn_save.setProperty("success", True)
        self.btn_save.setToolTip("Mark the cheque as cleared with the selected date")
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close this window")
        self.btn_save.clicked.connect(self._save)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_save); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _save(self):
        docid = self.txt_docid.text().strip()
        sno = int(self.txt_sno.text() or 0)
        clg_date = self.dt_clg.date().toPyDate()
        if not docid:
            QMessageBox.warning(self, "Input", "DocId zaroori hai"); return
        try:
            chq = self.txt_chq.text().strip()
            fv.cheque_mark_cleared(
                docid, sno, clg_date,
                chq_no=chq if chq else None,
                chq_date=self.dt_chq.date().toPyDate())
            QMessageBox.information(self, "Saved", "Cheque marked as cleared!")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


class FaTDSCertificateWindow(QMainWindow):
    """TDS Certificate (VB6: FaTDSCertificate)."""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("TDS Certificate")
        self.resize(700, 400)
        self._build_ui()

    def _build_ui(self):
        central = QWidget(); self.setCentralWidget(central)
        layout = QVBoxLayout(central)
        title = QLabel("TDS Certificate Generation")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        layout.addWidget(title)

        form = QGroupBox("Certificate Details")
        form_lay = QFormLayout(form)
        self.txt_subcode = QLineEdit(); self.txt_subcode.setPlaceholderText("SubCode (Party)")
        self.txt_finyear = QLineEdit(); self.txt_finyear.setPlaceholderText("2025-26")
        self.dt_from = QDateEdit(); self.dt_from.setCalendarPopup(True)
        self.dt_from.setDate(QDate(2025, 4, 1))
        self.dt_to = QDateEdit(); self.dt_to.setCalendarPopup(True)
        self.dt_to.setDate(QDate(2026, 3, 31))
        form_lay.addRow("Party SubCode:", self.txt_subcode)
        form_lay.addRow("Financial Year:", self.txt_finyear)
        form_lay.addRow("From:", self.dt_from)
        form_lay.addRow("To:", self.dt_to)
        layout.addWidget(form)

        btn_lay = QHBoxLayout()
        self.btn_gen = QPushButton("Generate Certificate")
        self.btn_gen.setProperty("success", True)
        self.btn_gen.setToolTip("Generate TDS certificate for the selected party and period")
        self.btn_exit = QPushButton("Exit")
        self.btn_exit.setToolTip("Close this window")
        self.btn_gen.clicked.connect(self._generate)
        self.btn_exit.clicked.connect(self.close)
        btn_lay.addWidget(self.btn_gen); btn_lay.addWidget(self.btn_exit)
        layout.addLayout(btn_lay)

    def _generate(self):
        subcode = self.txt_subcode.text().strip()
        if not subcode:
            QMessageBox.warning(self, "Input", "SubCode zaroori hai"); return
        try:
            rows = tds.tds_detail(subcode)
            total_tds = sum(float(r.get("tds_amt", 0)) for r in rows)
            QMessageBox.information(self, "TDS Certificate",
                f"Party: {subcode}\nTotal TDS: {total_tds:,.2f}\n"
                f"Entries: {len(rows)}\n\n(Crystal Report se print karo)")
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))


def open_fa_adjust(parent=None, delete: bool = False):
    # P9: FaAdjustDel / Adjustment Deletion -> dedicated delete screen
    if delete:
        from HMS_py.ui.partial_forms_ui import open_adjustment_delete
        return open_adjustment_delete(parent)
    w = FaAdjustWindow(parent); w.show(); return w

def open_fa_chq_clear(parent=None):
    w = FaChqClearWindow(parent); w.show(); return w

def open_fa_tds_cert(parent=None):
    w = FaTDSCertificateWindow(parent); w.show(); return w


class TDSChallanWindow(QDialog):
    """TDS Challan Entry (VB6: FaTDSChal + FaTDSChal1).

    Header (TDSChal): DocId, ChalType, ChalNo, ChalDate, BankCode,
    MonthNo, TDSAmt, Chq_No, Chq_Date, BankName.
    Lines (TDSChal1): TDS voucher attach (TDSDOCID/TDSVSNo, Amt, TDS,
    TDSAmt, CertiNo/CertiDate) — challan ke against LEDGERTDS mark.
    """

    LINE_COLS = [("VSNo", "vsno"), ("TDS DocId", "tds_docid"),
                 ("TDS VSNo", "tds_vsno"), ("TDS Code", "tdscode"),
                 ("Amount", "amt"), ("TDS", "tds"), ("TDS Amt", "tdsamt"),
                 ("Certi No", "certi_no")]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("T.D.S. Challan Entry - HMS_py")
        self.resize(940, 560)
        self.edit_docid = None
        self.state = "Idle"

        root = QVBoxLayout(self)
        form = QGroupBox("Challan Header (TDSChal)")
        fl = QFormLayout(form)
        self.ed_docid = QLineEdit(); self.ed_docid.setMaxLength(20)
        self.ed_chaltype = QLineEdit(); self.ed_chaltype.setMaxLength(6)
        self.ed_chalno = QLineEdit(); self.ed_chalno.setMaxLength(20)
        self.dt_chaldate = QDateEdit(QDate.currentDate())
        self.dt_chaldate.setCalendarPopup(True)
        self.ed_bankcode = QLineEdit(); self.ed_bankcode.setMaxLength(8)
        self.ed_monthno = QLineEdit(); self.ed_monthno.setMaxLength(4)
        self.ed_tdsamt = QLineEdit("0.00")
        self.ed_chqno = QLineEdit(); self.ed_chqno.setMaxLength(20)
        self.dt_chqdate = QDateEdit(QDate.currentDate())
        self.dt_chqdate.setCalendarPopup(True)
        self.ed_bankname = QLineEdit(); self.ed_bankname.setMaxLength(50)
        fl.addRow("DocId:", self.ed_docid)
        fl.addRow("Challan Type:", self.ed_chaltype)
        fl.addRow("Challan No:", self.ed_chalno)
        fl.addRow("Challan Date:", self.dt_chaldate)
        fl.addRow("Bank Code:", self.ed_bankcode)
        fl.addRow("Month No:", self.ed_monthno)
        fl.addRow("TDS Amount:", self.ed_tdsamt)
        fl.addRow("Cheque No:", self.ed_chqno)
        fl.addRow("Cheque Date:", self.dt_chqdate)
        fl.addRow("Bank Name:", self.ed_bankname)
        root.addWidget(form)

        self.tbl = QTableWidget(0, len(self.LINE_COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.LINE_COLS])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setSelectionBehavior(QTableWidget.SelectRows)
        self.tbl.setSelectionMode(QTableWidget.SingleSelection)
        self.tbl.setShowGrid(True)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        root.addWidget(self.tbl, 1)

        self.lbl_state = QLabel("State: Idle")
        root.addWidget(self.lbl_state)

        btns = QHBoxLayout()
        self.btn_new = QPushButton("New (Ctrl+N)")
        self.btn_edit = QPushButton("Edit (Ctrl+E)")
        self.btn_delete = QPushButton("Delete (Ctrl+D)")
        self.btn_save = QPushButton("Save (Ctrl+S)")
        self.btn_cancel = QPushButton("Cancel (Esc)")
        self.btn_close = QPushButton("Close")
        for b in (self.btn_new, self.btn_edit, self.btn_delete,
                  self.btn_save, self.btn_cancel, self.btn_close):
            btns.addWidget(b)
        root.addLayout(btns)

        self.btn_new.clicked.connect(self._on_new)
        self.btn_edit.clicked.connect(self._on_edit)
        self.btn_delete.clicked.connect(self._on_delete)
        self.btn_save.clicked.connect(self._on_save)
        self.btn_cancel.clicked.connect(self._on_cancel)
        self.btn_close.clicked.connect(self.reject)
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._on_new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._on_edit)
        QShortcut(QKeySequence("Ctrl+D"), self, activated=self._on_delete)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._on_save)
        QShortcut(QKeySequence("Escape"), self, activated=self._on_cancel)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)

        self.set_state(False)
        self.reload()

    # ---- helpers ----
    def _header_rec(self) -> dict:
        return {
            "docid": self.ed_docid.text().strip(),
            "chaltype": self.ed_chaltype.text().strip(),
            "chalno": self.ed_chalno.text().strip(),
            "chaldate": self.dt_chaldate.date().toPyDate(),
            "bankcode": self.ed_bankcode.text().strip(),
            "monthno": self.ed_monthno.text().strip(),
            "tdsamt": float(self.ed_tdsamt.text() or 0),
            "chq_no": self.ed_chqno.text().strip(),
            "chq_date": self.dt_chqdate.date().toPyDate(),
            "bank_name": self.ed_bankname.text().strip(),
        }

    def _load_header(self, rec: dict):
        self.ed_docid.setText(rec.get("docid", ""))
        self.ed_chaltype.setText(rec.get("chaltype", ""))
        self.ed_chalno.setText(rec.get("chalno", ""))
        d = rec.get("chaldate")
        if hasattr(d, "year"):
            self.dt_chaldate.setDate(QDate(d.year, d.month, d.day))
        self.ed_bankcode.setText(rec.get("bankcode", ""))
        self.ed_monthno.setText(str(rec.get("monthno", "")))
        self.ed_tdsamt.setText(f"{float(rec.get('tdsamt') or 0):.2f}")
        self.ed_chqno.setText(rec.get("chq_no", ""))
        cd = rec.get("chq_date")
        if hasattr(cd, "year"):
            self.dt_chqdate.setDate(QDate(cd.year, cd.month, cd.day))
        self.ed_bankname.setText(rec.get("bank_name", ""))

    def _load_lines(self, docid: str):
        rows = tds.tdschal1_lines(docid)
        self.tbl.setRowCount(max(len(rows), 1))  # Ensure at least 1 row placeholder
        if not rows:
            self.tbl.setItem(0, 0, QTableWidgetItem('No records found'))
        for r, rec in enumerate(rows):
            for c, key in enumerate([k for _, k in self.LINE_COLS]):
                v = rec.get(key, "")
                it = QTableWidgetItem(str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                self.tbl.setItem(r, c, it)

    def set_state(self, enabled: bool):
        for w in (self.ed_docid, self.ed_chaltype, self.ed_chalno,
                  self.dt_chaldate, self.ed_bankcode, self.ed_monthno,
                  self.ed_tdsamt, self.ed_chqno, self.dt_chqdate,
                  self.ed_bankname):
            w.setEnabled(enabled)
        self.btn_new.setEnabled(not enabled)
        self.btn_edit.setEnabled(not enabled)
        self.btn_delete.setEnabled(not enabled)
        self.btn_save.setEnabled(enabled)
        self.btn_cancel.setEnabled(enabled)
        self.state = ("Add" if self.edit_docid is None else "Edit") if enabled else "Idle"
        self.lbl_state.setText(f"State: {self.state}")

    def reload(self):
        try:
            rows = tds.tdschal_list(limit=1)
            if rows:
                self._load_header(rows[0])
                self._load_lines(rows[0]["docid"])
        except Exception:
            pass

    def _on_new(self):
        self.edit_docid = None
        for w in (self.ed_docid, self.ed_chaltype, self.ed_chalno,
                  self.ed_bankcode, self.ed_monthno, self.ed_chqno,
                  self.ed_bankname):
            w.clear()
        self.ed_tdsamt.setText("0.00")
        self.tbl.setRowCount(0)
        self.set_state(True)
        self.ed_docid.setFocus()

    def _on_edit(self):
        from PyQt6.QtWidgets import QInputDialog
        try:
            challans = tds.tdschal_list(limit=100)
        except Exception as e:
            QMessageBox.critical(self, "TDS Challan", f"DB error: {e}")
            return
        if not challans:
            QMessageBox.information(self, "Edit", "Koi challan nahi mila")
            return
        names = [c["docid"] for c in challans]
        docid, ok = QInputDialog.getItem(self, "Edit Challan",
                                         "Select DocId:", names, 0, False)
        if not (ok and docid):
            return
        rec = tds.tdschal_get(docid)
        if not rec:
            return
        self.edit_docid = docid
        self._load_header(rec)
        self._load_lines(docid)
        self.set_state(True)
        self.ed_docid.setEnabled(False)

    def _on_save(self):
        rec = self._header_rec()
        if not rec["docid"]:
            QMessageBox.warning(self, "Save", "DocId zaroori hai")
            return
        try:
            if self.state == "Add":
                if tds.tdschal_get(rec["docid"]):
                    QMessageBox.warning(self, "Save",
                                        f"{rec['docid']} pehle se maujood hai")
                    return
                tds.tdschal_insert(rec)
            else:
                tds.tdschal_update(self.edit_docid, rec)
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")
            return
        QMessageBox.information(self, "Save", "TDS Challan saved")
        self.edit_docid = None
        self.set_state(False)
        self.reload()

    def _on_cancel(self):
        self.edit_docid = None
        self.set_state(False)
        self.reload()

    def _on_delete(self):
        docid = self.edit_docid or self.ed_docid.text().strip()
        if not docid:
            QMessageBox.information(self, "Delete",
                                    "Pehle challan select/edit karein")
            return
        if not docid.upper().startswith("PYT"):
            QMessageBox.warning(self, "Delete",
                                "Safety: sirf PYT* test challans delete ho "
                                "sakte hain (production data protected)")
            return
        if QMessageBox.question(self, "Delete",
                                f"Challan '{docid}' delete karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            tds.tdschal1_delete_all(docid)
            tds.tdschal_delete(docid)
            QMessageBox.information(self, "Delete", "Deleted")
        except Exception as e:
            QMessageBox.critical(self, "Delete", f"DB error: {e}")
        self.edit_docid = None
        self.set_state(False)
        self.reload()


def open_fa_tds_challan(parent=None, user: str = "SA"):
    TDSChallanWindow(parent, user=user).exec()

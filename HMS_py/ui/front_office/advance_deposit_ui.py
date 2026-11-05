"""Advance Deposit dialog — VB6 ``frmAdvanceDepDialog.frm``.

VB6 behaviour reproduced here
-----------------------------
* A search box lists the targets an advance can be posted against: open
  bookings (``Booking`` where ``Cancel <> 'Y'``) and in-house folios
  (``GuestFolio`` joined to an open ``RoomOcc`` row).
* The lower grid lists the advance/refund lines already posted against the
  selected target (``PayCharge`` where ``RefDocID = <docid>`` and
  ``VType IN ('ARRES','ADRES', ...)``), ordered by date/voucher/serial.
* The entry form posts a new advance through
  :func:`HMS_py.core.front_office.reservation.advance_deposit`, which writes
  the ``PayCharge`` line(s), consumes one ``Voucher_Prefix`` serial and posts
  the tax lines from the selected ``TaxStru``.

Everything is read through the existing core module — the UI never issues SQL.
"""

from __future__ import annotations

import datetime

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (
    QAbstractItemView,
    QComboBox,
    QDateEdit,
    QDialog,
    QFormLayout,
    QGroupBox,
    QHBoxLayout,
    QHeaderView,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QTableWidget,
    QTableWidgetItem,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core import db
from HMS_py.core.front_office import reservation
from HMS_py.ui.main_window.desktop_style import mark_desktop_action
from HMS_py.ui.main_window.theme import palette


def _fmt_date(value) -> str:
    if isinstance(value, (datetime.date, datetime.datetime)):
        return f"{value:%d/%b/%Y}"
    return "" if value is None else str(value)


def _fmt_money(value) -> str:
    try:
        return f"{float(value or 0):,.2f}"
    except (TypeError, ValueError):
        return "0.00"


def _cell(text, *, align_right: bool = False) -> QTableWidgetItem:
    item = QTableWidgetItem("" if text is None else str(text))
    item.setFlags(item.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        item.setTextAlignment(Qt.AlignmentFlag.AlignRight
                              | Qt.AlignmentFlag.AlignVCenter)
    return item


def _make_table(headers: list[str]) -> QTableWidget:
    table = QTableWidget(0, len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    table.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
    table.setAlternatingRowColors(True)
    table.verticalHeader().setVisible(False)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
    return table


class AdvanceDepositDialog(QDialog):
    """Post and review advance deposits against a booking or in-house folio."""

    TARGET_COLS = ["Kind", "Doc Id", "Guest", "Ref No", "Arrival",
                   "Departure", "Status", "Site"]
    ADVANCE_COLS = ["SNo", "Date", "VType", "VNo", "Pay Type", "Advance",
                    "Refund", "Narration"]

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.setWindowTitle("Advance Deposit")
        self.resize(1080, 720)
        self.user = user or db.get_user()
        self._targets: list[dict] = []
        self._advances: list[dict] = []
        self._current: dict | None = None
        self._build_ui()
        self._load_choices()
        self.reload_targets()

    # ------------------------------------------------------------------ UI
    def _build_ui(self) -> None:
        root = QVBoxLayout(self)

        title = QLabel("Advance Deposit")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        # --- target search -------------------------------------------------
        search_row = QHBoxLayout()
        search_row.addWidget(QLabel("Search guest / booking / room:"))
        self.ed_search = QLineEdit()
        self.ed_search.setPlaceholderText(
            "Guest name, booking DocId, folio DocId or room number")
        self.ed_search.returnPressed.connect(self.reload_targets)
        search_row.addWidget(self.ed_search, 1)
        btn_search = QPushButton("Search")
        mark_desktop_action(btn_search)
        btn_search.clicked.connect(self.reload_targets)
        search_row.addWidget(btn_search)
        root.addLayout(search_row)

        root.addWidget(QLabel("Select the booking or in-house folio:"))
        self.tbl_targets = _make_table(self.TARGET_COLS)
        self.tbl_targets.itemSelectionChanged.connect(self._on_target_selected)
        root.addWidget(self.tbl_targets, 2)

        self.lbl_target = QLabel("No target selected.")
        self.lbl_target.setWordWrap(True)
        root.addWidget(self.lbl_target)

        # --- existing advances ---------------------------------------------
        root.addWidget(QLabel("Advances already posted for this target:"))
        self.tbl_advances = _make_table(self.ADVANCE_COLS)
        root.addWidget(self.tbl_advances, 2)

        self.lbl_totals = QLabel("Advance: 0.00    Refund: 0.00    Net: 0.00")
        self.lbl_totals.setFont(QFont("Segoe UI", 10, QFont.Weight.Bold))
        root.addWidget(self.lbl_totals)

        # --- entry form ----------------------------------------------------
        box = QGroupBox("New Advance / Refund")
        form = QFormLayout(box)

        self.cmb_vtype = QComboBox()
        self.cmb_vtype.currentIndexChanged.connect(self._update_prefix_label)
        form.addRow("Voucher Type:", self.cmb_vtype)

        self.lbl_prefix = QLabel("")
        form.addRow("Voucher Prefix:", self.lbl_prefix)

        self.cmb_paytype = QComboBox()
        form.addRow("Payment Type:", self.cmb_paytype)

        self.ed_amount = QLineEdit()
        self.ed_amount.setPlaceholderText("Amount, e.g. 5000.00")
        form.addRow("Amount:", self.ed_amount)

        self.cmb_advtype = QComboBox()
        self.cmb_advtype.addItems(["Advance", "Refund"])
        form.addRow("Transaction:", self.cmb_advtype)

        self.cmb_tax = QComboBox()
        form.addRow("Tax Structure:", self.cmb_tax)

        self.de_vdate = QDateEdit(QDate.currentDate())
        self.de_vdate.setCalendarPopup(True)
        self.de_vdate.setDisplayFormat("dd/MM/yyyy")
        self.de_vdate.dateChanged.connect(self._update_prefix_label)
        form.addRow("Voucher Date:", self.de_vdate)

        self.ed_narration = QLineEdit()
        self.ed_narration.setPlaceholderText("Optional narration")
        form.addRow("Narration:", self.ed_narration)

        root.addWidget(box)

        # --- buttons -------------------------------------------------------
        buttons = QHBoxLayout()
        self.btn_post = QPushButton("Post Advance")
        mark_desktop_action(self.btn_post)
        self.btn_post.clicked.connect(self._post)
        buttons.addWidget(self.btn_post)

        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self._refresh_all)
        buttons.addWidget(self.btn_refresh)

        buttons.addStretch()
        self.btn_exit = QPushButton("Exit")
        mark_desktop_action(self.btn_exit)
        self.btn_exit.clicked.connect(self.reject)
        buttons.addWidget(self.btn_exit)
        root.addLayout(buttons)

        self._set_entry_enabled(False)

    # -------------------------------------------------------------- choices
    def _load_choices(self) -> None:
        """Fill the voucher-type, payment-type and tax-structure combos."""
        try:
            vtypes = reservation.advance_voucher_types()
        except Exception as exc:  # pragma: no cover - DB dependent
            vtypes = []
            self._warn("Load Voucher Types", exc)

        self.cmb_vtype.blockSignals(True)
        self.cmb_vtype.clear()
        for vt in vtypes:
            label = f"{vt['vtype']} — {vt['description']} ({vt['site']})"
            if not vt["prefix"]:
                label += "  (no valid prefix)"
            self.cmb_vtype.addItem(label, vt)
        if not vtypes:
            self.cmb_vtype.addItem("(no advance voucher type found)", None)
        self.cmb_vtype.blockSignals(False)

        try:
            paytypes = reservation.advance_pay_types()
        except Exception as exc:  # pragma: no cover - DB dependent
            paytypes = []
            self._warn("Load Payment Types", exc)

        self.cmb_paytype.clear()
        for pt in paytypes:
            self.cmb_paytype.addItem(f"{pt['code']} — {pt['name']}", pt)
        if not paytypes:
            self.cmb_paytype.addItem("(no payment type found)", None)

        self.cmb_tax.clear()
        self.cmb_tax.addItem("(none)", "")
        try:
            rows = db.query(
                "SELECT DISTINCT Code, Name FROM TaxStru "
                "WHERE Code IS NOT NULL ORDER BY Name")
        except Exception as exc:  # pragma: no cover - DB dependent
            rows = []
            self._warn("Load Tax Structures", exc)
        for r in rows:
            self.cmb_tax.addItem(f"{(r.Code or '').strip()} — "
                                 f"{(r.Name or '').strip()}",
                                 (r.Code or "").strip())

        self._update_prefix_label()

    def _update_prefix_label(self) -> None:
        vt = self.cmb_vtype.currentData()
        if not isinstance(vt, dict):
            self.lbl_prefix.setText("—")
            self.lbl_prefix.setStyleSheet(f"color:{palette().get('danger', '#dc2626')};")
            return
        # Prefix validity depends on the date and on the target's site, so
        # re-check both live instead of trusting the value loaded at startup.
        on_date = self.de_vdate.date().toPyDate()
        site = (self._current or {}).get("site") or None
        try:
            live = reservation.advance_voucher_types(on_date=on_date, site=site)
            match = next(
                (v for v in live
                 if v["vtype"] == vt["vtype"] and v["site"] == vt["site"]),
                None)
        except Exception:  # pragma: no cover - DB dependent
            match = None
        prefix = (match or {}).get("prefix") or ""
        if prefix:
            self.lbl_prefix.setText(prefix)
            self.lbl_prefix.setStyleSheet(f"color:{palette().get('text', '#111827')};")
        else:
            self.lbl_prefix.setText(
                f"none valid on {on_date:%d/%m/%Y}"
                f"{' for site ' + site if site else ''} — posting will be rejected")
            self.lbl_prefix.setStyleSheet(f"color:{palette().get('danger', '#dc2626')};")

    # ----------------------------------------------------------------- data
    def reload_targets(self) -> None:
        term = self.ed_search.text().strip()
        try:
            self._targets = reservation.list_advance_targets(term)
        except Exception as exc:  # pragma: no cover - DB dependent
            self._targets = []
            self._warn("Search", exc)

        self.tbl_targets.setRowCount(len(self._targets))
        for row, t in enumerate(self._targets):
            values = [
                "Booking" if t["kind"] == "booking" else "In-house",
                t["docid"], t["guest_name"], t["ref_no"],
                _fmt_date(t["arr_date"]), _fmt_date(t["dep_date"]),
                t["status"], t["site"],
            ]
            for col, value in enumerate(values):
                self.tbl_targets.setItem(row, col, _cell(value))

        if not self._targets:
            self.lbl_target.setText(
                "No matching booking or in-house folio. "
                "Type part of a guest name, DocId or room number and search again.")
        self._clear_target()

    def _on_target_selected(self) -> None:
        row = self.tbl_targets.currentRow()
        if row < 0 or row >= len(self._targets):
            return
        self._current = self._targets[row]
        t = self._current
        self.lbl_target.setText(
            f"Target: {t['guest_name']} · {t['docid']} "
            f"({'Booking ' + str(t['ref_no']) if t['kind'] == 'booking' else 'Folio ' + str(t['ref_no'])})"
            f" · arrival {_fmt_date(t['arr_date'])} · departure {_fmt_date(t['dep_date'])}"
        )
        self._set_entry_enabled(True)
        self._update_prefix_label()
        self.reload_advances()

    def reload_advances(self) -> None:
        docid = (self._current or {}).get("docid", "")
        if not docid:
            self._advances = []
        else:
            try:
                self._advances = reservation.list_advance_deposits(docid)
            except Exception as exc:  # pragma: no cover - DB dependent
                self._advances = []
                self._warn("Load Advances", exc)

        self.tbl_advances.setRowCount(len(self._advances))
        for row, a in enumerate(self._advances):
            values = [
                a["sno"], _fmt_date(a["vdate"]), a["vtype"], a["vno"],
                a["paytype"], _fmt_money(a["amt_cr"]), _fmt_money(a["amt_dr"]),
                a["comments"],
            ]
            for col, value in enumerate(values):
                self.tbl_advances.setItem(
                    row, col, _cell(value, align_right=col in (5, 6)))

        try:
            totals = reservation.advance_totals(docid) if docid else {
                "advance": 0, "refund": 0, "net": 0, "count": 0}
        except Exception:  # pragma: no cover - DB dependent
            totals = {"advance": 0, "refund": 0, "net": 0, "count": 0}
        self.lbl_totals.setText(
            f"Advance: {_fmt_money(totals['advance'])}    "
            f"Refund: {_fmt_money(totals['refund'])}    "
            f"Net: {_fmt_money(totals['net'])}    "
            f"({totals['count']} line(s))"
        )

    def _refresh_all(self) -> None:
        docid = (self._current or {}).get("docid")
        self._load_choices()
        self.reload_targets()
        if docid:
            for row, t in enumerate(self._targets):
                if t["docid"] == docid:
                    self.tbl_targets.selectRow(row)
                    break

    # ---------------------------------------------------------------- state
    def _clear_target(self) -> None:
        self._current = None
        self._advances = []
        self.tbl_advances.setRowCount(0)
        self.lbl_totals.setText("Advance: 0.00    Refund: 0.00    Net: 0.00")
        self._set_entry_enabled(False)

    def _set_entry_enabled(self, enabled: bool) -> None:
        for widget in (self.cmb_vtype, self.cmb_paytype, self.ed_amount,
                       self.cmb_advtype, self.cmb_tax, self.de_vdate,
                       self.ed_narration, self.btn_post):
            widget.setEnabled(enabled)

    # ---------------------------------------------------------------- post
    def _post(self) -> None:
        target = self._current
        if not target:
            QMessageBox.information(self, "Advance Deposit",
                                    "Pehle booking ya in-house folio select karo.")
            return

        vt = self.cmb_vtype.currentData()
        if not isinstance(vt, dict):
            QMessageBox.warning(self, "Advance Deposit",
                                "Koi advance voucher type available nahi hai.")
            return
        pt = self.cmb_paytype.currentData()
        if not isinstance(pt, dict):
            QMessageBox.warning(self, "Advance Deposit",
                                "Koi payment type available nahi hai.")
            return

        raw = self.ed_amount.text().replace(",", "").strip()
        try:
            amount = float(raw)
        except ValueError:
            QMessageBox.warning(self, "Advance Deposit",
                                f"Amount '{raw}' valid number nahi hai.")
            return
        if amount <= 0:
            QMessageBox.warning(self, "Advance Deposit",
                                "Amount zero se bada hona chahiye.")
            return

        advtype = "Refund" if self.cmb_advtype.currentText() == "Refund" else "ADV"
        vdate = self.de_vdate.date().toPyDate()
        action = "Refund" if advtype == "Refund" else "Advance"

        if QMessageBox.question(
                self, "Advance Deposit",
                f"{action} of {_fmt_money(amount)} for {target['guest_name']} "
                f"({target['docid']})?\n\n"
                f"Voucher {vt['vtype']} dated {vdate:%d/%m/%Y} will be posted "
                f"and one voucher serial consumed.",
                QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
        ) != QMessageBox.StandardButton.Yes:
            return

        try:
            result = reservation.advance_deposit(
                docid=target["docid"],
                vtype=vt["vtype"],
                paytype=pt["code"],
                amount=amount,
                advtype=advtype,
                narration=self.ed_narration.text().strip(),
                user=self.user,
                site=target["site"] or reservation.SITE_CODE,
                tax_stru=self.cmb_tax.currentData() or "",
                vdate=vdate,
            )
        except Exception as exc:  # pragma: no cover - DB dependent
            QMessageBox.critical(self, "Advance Deposit", f"Posting failed:\n{exc}")
            return

        QMessageBox.information(
            self, "Advance Deposit",
            f"{action} posted.\n\n"
            f"  Voucher: {result['docid']}\n"
            f"  VNo: {result['vno']}\n"
            f"  Amount: {_fmt_money(result['amount'])}")
        self.ed_amount.clear()
        self.ed_narration.clear()
        self.reload_advances()
        self.reload_targets()

    # --------------------------------------------------------------- helper
    def _warn(self, title: str, exc: Exception) -> None:
        QMessageBox.warning(self, title, str(exc))


def open_advance_deposit(parent=None, user: str | None = None):
    """Open the Advance Deposit dialog (menu: Reservation > Advance Deposit)."""
    dialog = AdvanceDepositDialog(parent, user=user)
    dialog.exec()
    return dialog

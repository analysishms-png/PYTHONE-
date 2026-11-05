# ──────────────────────────────────────────────────────────────────────
# Group Check-Out Window (VB6 FdGrpCheckOut.frm)
# ──────────────────────────────────────────────────────────────────────

"""Group Check-Out Window (VB6 FdGrpCheckOut.frm).

VB6 Pattern:
- Master folio (MFolioNo=0) with sub-folios linked via MFolioNo
- Grid showing all sub-folios with balances
- Consolidated balance display
- Group settlement + check-out in one transaction
- PYT* guard for test data
"""

from __future__ import annotations

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDialog, QHBoxLayout, QLabel,
                             QLineEdit, QMessageBox, QPushButton,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import checkout
from HMS_py.ui import theme as _theme
from HMS_py.ui import print_preview as _pp


def _cell(val) -> QTableWidgetItem:
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(_theme.palette()["text"]))
    return it


def _red_cell(val) -> QTableWidgetItem:
    it = _cell(val)
    it.setForeground(QColor(_theme.status_colors()["danger_text"]))
    return it


def _green_cell(val) -> QTableWidgetItem:
    it = _cell(val)
    it.setForeground(QColor(_theme.status_colors()["success_text"]))
    return it


class GroupCheckoutWindow(QDialog):
    """VB6 FdGrpCheckOut.frm: Group Check-Out for master folio with sub-folios.

    VB6 Pattern:
    - Master folio (MFolioNo=0) with sub-folios linked via MFolioNo
    - Grid showing all sub-folios with balances
    - Consolidated balance display
    - Group settlement + check-out in one transaction
    - PYT* guard for test data
    """

    FOLIO_COLS = ["FolioNo", "Guest Name", "Departure", "Room",
                  "Charges (Dr)", "Payments (Cr)", "Balance", "Status"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Group Check-Out - HMS_py")
        self.resize(1000, 700)

        root = QVBoxLayout(self)

        # ---- Master Folio Selection ----
        master_row = QHBoxLayout()
        master_row.setSpacing(8)
        master_row.addWidget(QLabel("Master Folio #:"))
        self.edMaster = QLineEdit()
        self.edMaster.setPlaceholderText("Enter master folio # (MFolioNo=0)")
        self.edMaster.setMaximumWidth(150)
        master_row.addWidget(self.edMaster)

        btnLoad = QPushButton("Load Group")
        btnLoad.setToolTip("Load sub-folios for this master folio (F3)")
        btnLoad.clicked.connect(self._load_group)
        master_row.addWidget(btnLoad)

        self.btnPreview = QPushButton("Preview")
        self.btnPreview.setToolTip("Show consolidated balance without checkout (F4)")
        self.btnPreview.clicked.connect(self._preview)
        master_row.addWidget(self.btnPreview)

        master_row.addStretch()

        self.lblGroup = QLabel("No group loaded")
        self.lblGroup.setStyleSheet("color: #666; font-style: italic;")
        master_row.addWidget(self.lblGroup)
        root.addLayout(master_row)

        # ---- Sub-Folios Grid ----
        self.tbl = QTableWidget(0, len(self.FOLIO_COLS))
        self.tbl.setHorizontalHeaderLabels(self.FOLIO_COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setMaximumHeight(400)
        root.addWidget(self.tbl)

        # ---- Consolidated Balance ----
        balance_frame = QWidget()
        balance_frame.setStyleSheet("background: #f5f5f5; border-radius: 8px; padding: 12px;")
        bal_layout = QHBoxLayout(balance_frame)
        bal_layout.setSpacing(20)

        self.lblTotalDr = QLabel("Total Charges: 0.00")
        self.lblTotalCr = QLabel("Total Payments: 0.00")
        self.lblTotalBal = QLabel("Net Balance: 0.00")
        for lbl in (self.lblTotalDr, self.lblTotalCr, self.lblTotalBal):
            lbl.setFont(QFont("Segoe UI", 12, QFont.Weight.Bold))
            bal_layout.addWidget(lbl)
        root.addWidget(balance_frame)

        # ---- Actions ----
        btns = QHBoxLayout()
        btns.setSpacing(8)

        self.btnSettle = QPushButton("Group Settle + Check-Out (PYT*)")
        self.btnSettle.setToolTip("Settle all sub-folios and check-out (PYT* only, Ctrl+S)")
        self.btnSettle.setProperty("role", "danger")
        self.btnSettle.setMinimumHeight(40)
        self.btnSettle.clicked.connect(self._do_group_checkout)
        btns.addWidget(self.btnSettle)

        self.btnPrint = QPushButton("Print Consolidated Bill")
        self.btnPrint.setToolTip("Print consolidated bill for group (Ctrl+P)")
        self.btnPrint.setMinimumHeight(40)
        self.btnPrint.clicked.connect(self._print_consolidated)
        btns.addWidget(self.btnPrint)

        btnRefresh = QPushButton("Refresh (F5)")
        btnRefresh.setToolTip("Reload group data (F5)")
        btnRefresh.setMinimumHeight(40)
        btnRefresh.clicked.connect(self._load_group)
        btns.addWidget(btnRefresh)

        btnClose = QPushButton("Close")
        btnClose.setToolTip("Close this window (Esc)")
        btnClose.setMinimumHeight(40)
        btnClose.clicked.connect(self.reject)
        btns.addWidget(btnClose)

        btns.addStretch()
        root.addLayout(btns)

        # ---- Status ----
        self.lblStatus = QLabel("Enter master folio # and press Load Group (F3)")
        self.lblStatus.setStyleSheet("color: #666; padding: 8px;")
        root.addWidget(self.lblStatus)

        # Shortcuts
        QShortcut(QKeySequence("F3"), self, activated=self._load_group)
        QShortcut(QKeySequence("F4"), self, activated=self._preview)
        QShortcut(QKeySequence("F5"), self, activated=self._load_group)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._do_group_checkout)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print_consolidated)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_group(self):
        text = self.edMaster.text().strip()
        if not text:
            QMessageBox.information(self, "Group Check-Out", "Master folio # zaroori hai")
            return
        try:
            master_folio = int(text)
        except ValueError:
            QMessageBox.warning(self, "Group Check-Out", "Master folio # integer hona chahiye")
            return

        try:
            preview = checkout.group_checkout_preview(master_folio)
        except ValueError as e:
            QMessageBox.warning(self, "Group Check-Out", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Group Check-Out", f"DB error: {e}")
            return

        sub = preview["sub_folios"]
        self.tbl.setRowCount(len(sub))
        total_dr = total_cr = 0.0

        for r, f in enumerate(sub):
            bal = f["balance"]
            status = "OUTSTANDING" if bal > 0 else "SETTLED" if bal == 0 else "OVERPAID"
            vals = [
                f["folio"], f["name"], f["depdate"], f["roomno"],
                f"{f['charges_dr']:,.2f}", f"{f['payments_cr']:,.2f}",
                f"{f['balance']:,.2f}", status,
            ]
            for c, v in enumerate(vals):
                it = _cell(v)
                if c == 7:  # Status column
                    if status == "OUTSTANDING":
                        it = _red_cell(v)
                    elif status == "SETTLED":
                        it = _green_cell(v)
                self.tbl.setItem(r, c, it)

            total_dr += f["charges_dr"]
            total_cr += f["payments_cr"]

        self.lblTotalDr.setText(f"Total Charges: {total_dr:,.2f}")
        self.lblTotalCr.setText(f"Total Payments: {total_cr:,.2f}")
        net = total_dr - total_cr
        self.lblTotalBal.setText(f"Net Balance: {net:,.2f}")

        st = _theme.status_colors()
        self.lblTotalBal.setStyleSheet(
            f"color:{st['danger_text']}; font-weight:bold;" if net > 0
            else f"color:{st['success_text']}; font-weight:bold;")

        self.lblGroup.setText(
            f"Master Folio: {preview['master_folio']} ({preview['master_name']}) | "
            f"Sub-folios: {len(sub)} | DocId: {preview['master_docid']}")

        self.lblStatus.setText("Group loaded. Review balances and press Group Settle + Check-Out.")

    def _preview(self):
        text = self.edMaster.text().strip()
        if not text:
            QMessageBox.information(self, "Preview", "Master folio # zaroori hai")
            return
        try:
            master_folio = int(text)
        except ValueError:
            QMessageBox.warning(self, "Preview", "Master folio # integer hona chahiye")
            return

        try:
            preview = checkout.group_checkout_preview(master_folio)
        except ValueError as e:
            QMessageBox.warning(self, "Preview", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Preview", f"DB error: {e}")
            return

        msg = (f"GROUP CHECK-OUT PREVIEW\n\n"
               f"Master Folio: {preview['master_folio']} ({preview['master_name']})\n"
               f"DocId: {preview['master_docid']}\n"
               f"Sub-folios: {preview['total_folios']}\n\n"
               f"Total Charges: {preview['total_charges']:,.2f}\n"
               f"Total Payments: {preview['total_payments']:,.2f}\n"
               f"Net Balance: {preview['total_balance']:,.2f}\n\n"
               f"Sub-folios:\n")
        for f in preview["sub_folios"]:
            msg += f"  #{f['folio']} - {f['name']} | Dr: {f['charges_dr']:.2f} | Cr: {f['payments_cr']:.2f} | Bal: {f['balance']:.2f}\n"

        QMessageBox.information(self, "Group Check-Out Preview", msg)

    def _do_group_checkout(self):
        text = self.edMaster.text().strip()
        if not text:
            QMessageBox.information(self, "Group Check-Out", "Master folio # zaroori hai")
            return
        try:
            master_folio = int(text)
        except ValueError:
            QMessageBox.warning(self, "Group Check-Out", "Master folio # integer hona chahiye")
            return

        # PYT-guard: check if master folio is PYT*
        try:
            master_rec = checkout.checkin.get(master_folio)
        except Exception:
            master_rec = None

        if not master_rec or not master_rec["name"].upper().startswith("PYT"):
            QMessageBox.warning(
                self, "Group Check-Out",
                "Safety: sirf PYT* test master folios group check-out ho sakte hain\n"
                "(Production group check-outs VB6 EXE se karo)")
            return

        # Confirm
        preview = checkout.group_checkout_preview(master_folio)
        msg = (f"GROUP CHECK-OUT CONFIRM\n\n"
               f"Master: #{preview['master_folio']} - {preview['master_name']}\n"
               f"Sub-folios: {preview['total_folios']}\n"
               f"Total Charges: {preview['total_charges']:,.2f}\n"
               f"Total Payments: {preview['total_payments']:,.2f}\n"
               f"Net Balance: {preview['total_balance']:,.2f}\n\n"
               f"All {preview['total_folios']} sub-folios settle + check-out?")
        if QMessageBox.question(
                self, "Confirm Group Check-Out", msg) != \
                QMessageBox.StandardButton.Yes:
            return

        # Execute
        try:
            result = checkout.group_checkout(master_folio, user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Group Check-Out", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Group Check-Out", f"DB error: {e}")
            return

        if result["errors"]:
            err_msg = "Some folios failed:\n" + "\n".join(
                f"  #{e['folio']}: {e['error']}" for e in result["errors"])
            QMessageBox.warning(self, "Group Check-Out", f"{err_msg}\n\nSettled: {result['settled']}")
        else:
            QMessageBox.information(
                self, "Group Check-Out",
                f"Group check-out successful!\n\n"
                f"Settled: {result['settled']} folios\n"
                f"Checked out: {result['checked_out']} folios\n"
                f"Total Charges: {result['total_charges']:,.2f}\n"
                f"Total Payments: {result['total_payments']:,.2f}\n"
                f"Net Balance: {result['total_balance']:,.2f}")

        self._load_group()

    def _print_consolidated(self):
        text = self.edMaster.text().strip()
        if not text:
            QMessageBox.information(self, "Print", "Master folio # zaroori hai")
            return
        try:
            master_folio = int(text)
        except ValueError:
            QMessageBox.warning(self, "Print", "Master folio # integer hona chahiye")
            return

        try:
            preview = checkout.group_checkout_preview(master_folio)
        except Exception as e:
            QMessageBox.critical(self, "Print", f"DB error: {e}")
            return

        # Build consolidated bill text
        out = []
        co = _pp.company_header()
        if co:
            out.append(co)
            out.append("=" * 80)
        out.append("CONSOLIDATED GROUP BILL")
        out.append(f"Master Folio: {preview['master_folio']} ({preview['master_name']})")
        out.append(f"DocId: {preview['master_docid']}")
        out.append("-" * 80)

        header = ["FolioNo", "Guest", "Departure", "Charges", "Payments", "Balance"]
        rows = []
        for f in preview["sub_folios"]:
            rows.append([
                f["folio"], f["name"], f["depdate"],
                f"{f['charges_dr']:,.2f}", f"{f['payments_cr']:,.2f}",
                f"{f['balance']:,.2f}"
            ])
        out.append(_pp.grid_to_text(header, rows))
        out.append("-" * 80)
        out.append(f"{'Total Charges':>68}: {preview['total_charges']:,.2f}")
        out.append(f"{'Total Payments':>68}: {preview['total_payments']:,.2f}")
        out.append(f"{'Net Balance':>68}: {preview['total_balance']:,.2f}")
        out.append("")
        out.append("NOTE: Consolidated group bill (VB6 layout pending).")

        _pp.preview_text("\n".join(out), f"Group Bill - Master #{preview['master_folio']}", self)


def open_group_checkout(parent=None, user: str = "SA"):
    GroupCheckoutWindow(parent, user=user).exec()
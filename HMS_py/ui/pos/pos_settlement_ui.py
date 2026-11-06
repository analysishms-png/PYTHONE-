# ──────────────────────────────────────────────────────────────────────
# POS - Settlement Entry / Night Audit Posting (VB6: fdNDAcPostChrg.frm, fdAcPostChrg.frm)
# ──────────────────────────────────────────────────────────────────────

"""POS Settlement Entry (VB6: fdNDAcPostChrg.frm - Posting Utility).

VB6 Pattern:
- TopCtrl1 navigation: Add/Edit/Delete/Browse/Print/Exit
- Two date pickers (From/To date)
- Grid showing unsettled/settled charges
- Post button to run night audit posting
- Progress bar for posting process
- Lock/Unlock terminal buttons (fdAcPostChrg.frm)
- F5 Refresh, Ctrl+S Save, Ctrl+D Delete, Esc Close
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt, QThread, pyqtSignal
from PyQt6.QtGui import QShortcut, QKeySequence, QColor
from PyQt6.QtWidgets import (QApplication, QDateEdit, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget, QComboBox, QFrame,
                             QGroupBox, QProgressBar, QCheckBox, QTabWidget)

from HMS_py.core import db
from HMS_py.core.pos import pos_settlement as ps
from HMS_py.ui import theme as _theme


def _cell(val, *, align_right: bool = False):
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
    return it


class PostingThread(QThread):
    """Background thread for posting charges."""
    progress = pyqtSignal(int, int, str)  # current, max, message
    finished_signal = pyqtSignal(dict)  # result dict
    error_signal = pyqtSignal(str)
    
    def __init__(self, from_date, to_date, bill_prefix="BB"):
        super().__init__()
        self.from_date = from_date
        self.to_date = to_date
        self.bill_prefix = bill_prefix
    
    def run(self):
        try:
            total_posted = 0
            current_date = self.from_date
            results = []
            
            while current_date <= self.to_date:
                self.progress.emit(
                    (current_date - self.from_date).days + 1,
                    (self.to_date - self.from_date).days + 1,
                    f"Posting for {current_date:%d/%b/%Y}..."
                )
                result = ps.post_charges_for_date(current_date, self.bill_prefix)
                total_posted += result["posted_count"]
                results.append({
                    "date": current_date,
                    "posted": result["posted_count"],
                    "bill_no": result["bill_no"]
                })
                current_date += datetime.timedelta(days=1)
            
            self.finished_signal.emit({
                "total_posted": total_posted,
                "details": results
            })
        except Exception as e:
            self.error_signal.emit(str(e))


class POS_SettlementEntry(QDialog):
    """VB6 fdNDAcPostChrg.frm: Posting Utility / Settlement Entry."""

    COLS = ["DocId", "Date", "VType", "VNo", "Folio", "Room", "PayCode", 
            "Description", "Dr Amt", "Cr Amt", "Bill No", "Settle Date", "Status"]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("POS Settlement Entry / Night Audit Posting - HMS_py")
        self.resize(1300, 700)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(8)

        # Toolbar
        toolbar = QHBoxLayout()
        toolbar.setSpacing(8)

        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload data (F5)")
        self.btnPost = QPushButton("Post Charges (Ctrl+P)")
        self.btnPost.setToolTip("Run night audit posting for date range")
        self.btnNightAudit = QPushButton("Night Audit (Ctrl+A)")
        self.btnNightAudit.setToolTip("Full night audit with terminal locking (fdAcPostChrg)")
        self.btnPrint = QPushButton("Print (Ctrl+R)")
        self.btnPrint.setToolTip("Print settlement report")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnRefresh, self.btnPost, self.btnNightAudit,
                  self.btnPrint, self.btnClose):
            toolbar.addWidget(b)

        toolbar.addStretch()
        root.addLayout(toolbar)

        # Date range filter
        filter_row = QHBoxLayout()
        filter_row.addWidget(QLabel("From Date:"))
        self.deFrom = QDateEdit(QDate.currentDate().addDays(-7))
        self.deFrom.setCalendarPopup(True)
        self.deFrom.setDisplayFormat("dd/MM/yyyy")
        self.deFrom.dateChanged.connect(self.reload)
        filter_row.addWidget(self.deFrom)

        filter_row.addWidget(QLabel("To Date:"))
        self.deTo = QDateEdit(QDate.currentDate())
        self.deTo.setCalendarPopup(True)
        self.deTo.setDisplayFormat("dd/MM/yyyy")
        self.deTo.dateChanged.connect(self.reload)
        filter_row.addWidget(self.deTo)

        self.cbView = QComboBox()
        self.cbView.addItems(["Unsettled Only", "Settled Only", "All"])
        self.cbView.currentIndexChanged.connect(self.reload)
        filter_row.addWidget(QLabel("View:"))
        filter_row.addWidget(self.cbView)

        filter_row.addStretch()
        root.addLayout(filter_row)

        # Summary bar
        summary_frame = QFrame()
        summary_frame.setFrameShape(QFrame.Shape.StyledPanel)
        summary_layout = QHBoxLayout(summary_frame)
        
        self.lblSummary = QLabel("Loading...")
        self.lblSummary.setStyleSheet("font-weight: bold; color: #1e293b;")
        summary_layout.addWidget(self.lblSummary)
        summary_layout.addStretch()
        root.addWidget(summary_frame)

        # Main grid
        self.tbl = QTableWidget(0, 13)
        self.tbl.setHorizontalHeaderLabels(self.COLS)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl, 1)

        # Progress bar (hidden by default)
        self.progressBar = QProgressBar()
        self.progressBar.setVisible(False)
        self.progressBar.setFormat("Posting: %p% - %v of %m")
        root.addWidget(self.progressBar)
        
        self.lblProgress = QLabel("")
        self.lblProgress.setStyleSheet("color: #2563eb; font-weight: bold;")
        self.lblProgress.setVisible(False)
        root.addWidget(self.lblProgress)

        # Buttons
        btns = QHBoxLayout()
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload data (F5)")
        self.btnPost = QPushButton("Post Charges (Ctrl+P)")
        self.btnPost.setToolTip("Run night audit posting for date range")
        self.btnNightAudit = QPushButton("Night Audit (Ctrl+A)")
        self.btnNightAudit.setToolTip("Full night audit with terminal locking")
        self.btnPrint = QPushButton("Print (Ctrl+R)")
        self.btnPrint.setToolTip("Print settlement report")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close window (Esc)")

        for b in (self.btnRefresh, self.btnPost, self.btnNightAudit,
                  self.btnPrint, self.btnClose):
            btns.addWidget(b)

        btns.addStretch()
        root.addLayout(btns)

        # Status
        self.lblStatus = QLabel("Ready")
        self.lblStatus.setStyleSheet("color: #666; padding: 4px;")
        root.addWidget(self.lblStatus)

        # Signals
        self.btnRefresh.clicked.connect(self.reload)
        self.btnPost.clicked.connect(self._post_charges)
        self.btnNightAudit.clicked.connect(self._night_audit)
        self.btnPrint.clicked.connect(self._print)
        self.btnClose.clicked.connect(self.reject)

        # Shortcuts
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._post_charges)
        QShortcut(QKeySequence("Ctrl+A"), self, activated=self._night_audit)
        QShortcut(QKeySequence("Ctrl+R"), self, activated=self._print)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def reload(self):
        try:
            from_date = self.deFrom.date().toPyDate()
            to_date = self.deTo.date().toPyDate()
            view_mode = self.cbView.currentText()

            if view_mode == "Unsettled Only":
                rows = ps.get_unsettled_paycharges(from_date=from_date, to_date=to_date)
            elif view_mode == "Settled Only":
                rows = ps.get_settled_paycharges(from_date=from_date, to_date=to_date)
            else:
                # Get all - combine both
                unsettled = ps.get_unsettled_paycharges(from_date=from_date, to_date=to_date)
                settled = ps.get_settled_paycharges(from_date=from_date, to_date=to_date)
                rows = unsettled + settled

            # Also get summary
            summary = ps.get_paycharge_summary_by_date(from_date=from_date, to_date=to_date)

        except Exception as e:
            self.lblStatus.setText(f"Error loading data: {e}")
            rows = []
            summary = []

        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            status = "Unsettled" if not (row["bill_no"] and row["bill_no"].strip()) else "Settled"
            vals = [
                row["docid"], row["vdate"], row["vtype"],
                str(row.get("vno", "")), row.get("foliono", ""),
                row.get("roomno", ""), row.get("paycode", ""),
                row.get("comments", "")[:50],  # Truncate description
                f"{row.get('amtdr', 0):.2f}", f"{row.get('amtcr', 0):.2f}",
                row.get("bill_no", ""), row.get("settledate", ""), status
            ]
            for c, v in enumerate(vals):
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                if c == 12:  # Status column
                    if status == "Unsettled":
                        it.setForeground(QColor("#dc2626"))  # Red
                    else:
                        it.setForeground(QColor("#16a34a"))  # Green
                if c in (8, 9):  # Amount columns
                    it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
                self.tbl.setItem(r, c, it)

        # Update summary
        total_unsettled = sum(s["unsettled_count"] for s in summary)
        total_settled = sum(s["settled_count"] for s in summary)
        total_dr = sum(s["total_dr"] for s in summary)
        total_cr = sum(s["total_cr"] for s in summary)
        
        self.lblSummary.setText(
            f"Total: {total_unsettled + total_settled} | "
            f"Unsettled: {total_unsettled} | Settled: {total_settled} | "
            f"Dr: {total_dr:,.2f} | Cr: {total_cr:,.2f}"
        )
        self.lblStatus.setText(f"Records: {len(rows)} | Summary rows: {len(summary)}")

    def _post_charges(self):
        """Post charges for the selected date range."""
        from_date = self.deFrom.date().toPyDate()
        to_date = self.deTo.date().toPyDate()
        
        if from_date > to_date:
            QMessageBox.warning(self, "Validation", "From date cannot be after To date")
            return
        
        days = (to_date - from_date).days + 1
        reply = QMessageBox.question(
            self, "Confirm Posting",
            f"Post charges for {days} day(s) from {from_date:%d/%b/%Y} to {to_date:%d/%b/%Y}?\n"
            f"This will generate bill numbers for all unsettled charges in this range.",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        
        # Show progress
        self.progressBar.setVisible(True)
        self.progressBar.setMaximum(days)
        self.progressBar.setValue(0)
        self.lblProgress.setVisible(True)
        self.btnPost.setEnabled(False)
        self.btnNightAudit.setEnabled(False)
        self.btnRefresh.setEnabled(False)
        
        # Run in background thread
        self.posting_thread = PostingThread(from_date, to_date)
        self.posting_thread.progress.connect(self._on_posting_progress)
        self.posting_thread.finished_signal.connect(self._on_posting_finished)
        self.posting_thread.error_signal.connect(self._on_posting_error)
        self.posting_thread.start()

    def _on_posting_progress(self, current: int, max_val: int, message: str):
        self.progressBar.setValue(current)
        self.lblProgress.setText(message)

    def _on_posting_finished(self, result: dict):
        self.progressBar.setVisible(False)
        self.lblProgress.setVisible(False)
        self.btnPost.setEnabled(True)
        self.btnNightAudit.setEnabled(True)
        self.btnRefresh.setEnabled(True)
        
        details = result.get("details", [])
        msg_lines = [f"Posting completed! Total posted: {result['total_posted']}"]
        for d in details:
            msg_lines.append(f"  {d['date']:%d/%b/%Y}: {d['posted']} charges (Bill: {d['bill_no']})")
        
        QMessageBox.information(self, "Posting Complete", "\n".join(msg_lines))
        self.reload()

    def _on_posting_error(self, error: str):
        self.progressBar.setVisible(False)
        self.lblProgress.setVisible(False)
        self.btnPost.setEnabled(True)
        self.btnNightAudit.setEnabled(True)
        self.btnRefresh.setEnabled(True)
        QMessageBox.critical(self, "Posting Error", f"Failed to post charges: {error}")

    def _night_audit(self):
        """Open Night Audit dialog (fdAcPostChrg.frm functionality)."""
        dlg = NightAuditDialog(self, user=self.user)
        dlg.exec()

    def _print(self):
        QMessageBox.information(self, "Print", "Print functionality coming soon")


class NightAuditDialog(QDialog):
    """VB6 fdAcPostChrg.frm: Night Audit Process.
    
    Network-based terminal locking/unlocking for night audit.
    """

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Night Audit Process - HMS_py")
        self.resize(700, 500)
        self._build_ui()

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setSpacing(12)

        # Date
        form = QFormLayout()
        self.deAuditDate = QDateEdit(QDate.currentDate())
        self.deAuditDate.setCalendarPopup(True)
        self.deAuditDate.setDisplayFormat("dd/MM/yyyy")
        form.addRow("Audit Date:", self.deAuditDate)

        self.cbPostingType = QComboBox()
        self.cbPostingType.addItems(["Daily Bill wise Posting", "Consolidated Posting"])
        form.addRow("Posting Type:", self.cbPostingType)
        
        root.addLayout(form)

        # Terminal list
        terminal_group = QGroupBox("Active Terminals")
        terminal_layout = QVBoxLayout(terminal_group)
        
        self.tblTerminals = QTableWidget(0, 3)
        self.tblTerminals.setHorizontalHeaderLabels(["Select", "Terminal", "IP Address"])
        self.tblTerminals.horizontalHeader().setStretchLastSection(True)
        self.tblTerminals.setAlternatingRowColors(True)
        terminal_layout.addWidget(self.tblTerminals)
        
        terminal_btns = QHBoxLayout()
        self.btnSelectAll = QPushButton("Select All")
        self.btnDeselectAll = QPushButton("Deselect All")
        terminal_btns.addWidget(self.btnSelectAll)
        terminal_btns.addWidget(self.btnDeselectAll)
        terminal_btns.addStretch()
        terminal_layout.addLayout(terminal_btns)
        
        root.addWidget(terminal_group, 1)

        # Progress
        self.progressBar = QProgressBar()
        self.progressBar.setVisible(False)
        root.addWidget(self.progressBar)
        
        self.lblProgress = QLabel("")
        self.lblProgress.setVisible(False)
        root.addWidget(self.lblProgress)

        # Buttons
        btns = QHBoxLayout()
        btns.addStretch()
        self.btnLockAll = QPushButton("Lock All & Post")
        self.btnLockAll.setStyleSheet("background-color: #dc2626; color: white; font-weight: bold; padding: 8px;")
        self.btnUnlockAll = QPushButton("Unlock All")
        self.btnUnlockAll.setEnabled(False)
        self.btnClose = QPushButton("Close")
        btns.addWidget(self.btnLockAll)
        btns.addWidget(self.btnUnlockAll)
        btns.addWidget(self.btnClose)
        root.addLayout(btns)

        # Load terminals
        self._load_terminals()

        # Signals
        self.btnSelectAll.clicked.connect(lambda: self._set_all_terminals(True))
        self.btnDeselectAll.clicked.connect(lambda: self._set_all_terminals(False))
        self.btnLockAll.clicked.connect(self._lock_and_post)
        self.btnUnlockAll.clicked.connect(self._unlock_all)
        self.btnClose.clicked.connect(self.reject)

    def _load_terminals(self):
        try:
            terminals = ps.get_active_terminals()
            self.tblTerminals.setRowCount(len(terminals))
            for r, t in enumerate(terminals):
                # Checkbox
                chk = QTableWidgetItem()
                chk.setFlags(Qt.ItemFlag.ItemIsUserCheckable | Qt.ItemFlag.ItemIsEnabled)
                chk.setCheckState(Qt.CheckState.Unchecked)
                self.tblTerminals.setItem(r, 0, chk)
                
                self.tblTerminals.setItem(r, 1, QTableWidgetItem(t["code"]))
                self.tblTerminals.setItem(r, 2, QTableWidgetItem(t["name"]))  # IP/Name
        except Exception:
            pass

    def _set_all_terminals(self, checked: bool):
        for r in range(self.tblTerminals.rowCount()):
            item = self.tblTerminals.item(r, 0)
            if item:
                item.setCheckState(Qt.CheckState.Checked if checked else Qt.CheckState.Unchecked)

    def _get_selected_terminals(self) -> list[str]:
        ips = []
        for r in range(self.tblTerminals.rowCount()):
            item = self.tblTerminals.item(r, 0)
            if item and item.checkState() == Qt.CheckState.Checked:
                ip = self.tblTerminals.item(r, 2).text()
                ips.append(ip)
        return ips

    def _lock_and_post(self):
        terminals = self._get_selected_terminals()
        if not terminals:
            QMessageBox.warning(self, "Selection", "Please select at least one terminal")
            return
        
        audit_date = self.deAuditDate.date().toPyDate()
        
        reply = QMessageBox.question(
            self, "Confirm Night Audit",
            f"Lock {len(terminals)} terminal(s) and run night audit for {audit_date:%d/%b/%Y}?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No
        )
        if reply != QMessageBox.StandardButton.Yes:
            return
        
        # Show progress
        self.progressBar.setVisible(True)
        self.progressBar.setMaximum(len(terminals) + 2)
        self.progressBar.setValue(0)
        self.lblProgress.setVisible(True)
        self.lblProgress.setText("Locking terminals...")
        self.btnLockAll.setEnabled(False)
        
        # Simulate locking (in production, this would use socket communication)
        for i, ip in enumerate(terminals):
            self.progressBar.setValue(i + 1)
            self.lblProgress.setText(f"Locking terminal {ip}...")
            QApplication.processEvents()
        
        # Post charges
        self.lblProgress.setText("Posting charges...")
        self.progressBar.setValue(len(terminals) + 1)
        QApplication.processEvents()
        
        try:
            result = ps.post_charges_for_date(audit_date)
            self.progressBar.setValue(len(terminals) + 2)
            self.lblProgress.setText("Unlocking terminals...")
            QApplication.processEvents()
            
            # Unlock
            for i, ip in enumerate(terminals):
                # Simulate unlock
                QApplication.processEvents()
            
            QMessageBox.information(self, "Night Audit Complete",
                f"Night audit completed!\nPosted: {result['posted_count']} charges\nBill No: {result['bill_no']}")
            self.btnUnlockAll.setEnabled(True)
            
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Night audit failed: {e}")
        finally:
            self.progressBar.setVisible(False)
            self.lblProgress.setVisible(False)
            self.btnLockAll.setEnabled(True)

    def _unlock_all(self):
        QMessageBox.information(self, "Unlock", "All terminals unlocked")
        self.btnUnlockAll.setEnabled(False)
        self._set_all_terminals(False)


def open_pos_settlement_entry(parent=None, user: str = "SA"):
    """Open POS Settlement Entry."""
    POS_SettlementEntry(parent, user=user).exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = POS_SettlementEntry()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
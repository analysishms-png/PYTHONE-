"""FA Environment Settings (VB6: FaEnviro.frm → Python/PyQt6).
Full edit capability matching VB6 form layout.

Sections:
1. Ageing Parameters (Age1-6, Amt1-6)
2. Define Voucher (Show Groups, Ledger display)
3. Voucher Entry (Cr/Dr settings, limits, online adj, help filters)
4. Display (Site codes, prefixes, division, balance sheet, city names)
5. Reports (Cash/Bank books, Cr/Dr labels, page numbers, line fillers)
6. Opening/Closing Stock (Qty/Value)
7. TOD Printing (Company name position, date printing, line fillers)
8. Integrity Check (BtnIntegrity) - account integrity tool
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import (
    QApplication, QComboBox, QDialog, QFormLayout, QGroupBox,
    QHBoxLayout, QLabel, QLineEdit, QMessageBox, QPushButton,
    QScrollArea, QVBoxLayout, QWidget
)

from HMS_py.core.front_office import fa_enviro
from HMS_py.ui.main_window.desktop_style import apply_desktop_surface, mark_desktop_action


def _widget_for(key: str, default="") -> QLineEdit:
    """Create a read-only or editable widget based on key type."""
    w = QLineEdit()
    w.setText(str(default) if default is not None else "")
    # Most settings are Y/N or numeric - keep editable
    return w


class FAEnviroDialog(QDialog):
    """VB6 FaEnviro full edit dialog with all sections."""

    def __init__(self, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopFAEnvironment")
        self.setWindowTitle("FA Environment Settings")
        self.resize(900, 750)

        root = QVBoxLayout(self)
        self.status = QLabel("Loading...")
        self.status.setObjectName("desktopStateLabel")
        root.addWidget(self.status)

        # Scrollable form
        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        content = QWidget()
        self.form = QFormLayout(content)
        self.form.setLabelAlignment(Qt.AlignmentFlag.AlignLeft)
        self.form.setFormAlignment(Qt.AlignmentFlag.AlignTop)
        scroll.setWidget(content)
        root.addWidget(scroll, 1)

        # Buttons
        btns = QHBoxLayout()
        self.btn_save = QPushButton("Save")
        self.btn_save.setProperty("accent", True)
        mark_desktop_action(self.btn_save)
        self.btn_save.clicked.connect(self._save)

        self.btn_integrity = QPushButton("Integrity Check")
        mark_desktop_action(self.btn_integrity)
        self.btn_integrity.clicked.connect(self._integrity_check)

        self.btn_refresh = QPushButton("Refresh")
        mark_desktop_action(self.btn_refresh)
        self.btn_refresh.clicked.connect(self.reload)

        self.btn_close = QPushButton("Close")
        mark_desktop_action(self.btn_close)
        self.btn_close.clicked.connect(self.close)

        btns.addStretch(1)
        btns.addWidget(self.btn_integrity)
        btns.addWidget(self.btn_refresh)
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_close)
        root.addLayout(btns)

        self.widgets: dict[str, QLineEdit] = {}
        self.reload()

    def _add_section(self, title: str):
        """Add a section header."""
        grp = QGroupBox(title)
        grp_layout = QFormLayout(grp)
        self.form.addRow(grp)
        return grp_layout

    def reload(self):
        """Load all settings from DB into form."""
        # Clear existing
        while self.form.count():
            item = self.form.takeAt(0)
            if item.widget():
                item.widget().deleteLater()
        self.widgets.clear()

        try:
            values = fa_enviro.get()
        except Exception as exc:
            self.status.setText(f"Load failed: {exc}")
            return

        # Section 1: Ageing Parameters
        layout = self._add_section("Ageing Parameters")
        for i in range(1, 7):
            self.widgets[f"Age{i}"] = _add_line(layout, f"Period {i} (Days)", values.get(f"Age{i}", ""))
            self.widgets[f"Amt{i}"] = _add_line(layout, f"Slab {i} Amount", values.get(f"Amt{i}", ""))

        # Section 2: Define Voucher
        layout = self._add_section("Define Voucher")
        self.widgets["ShowGroup"] = _add_line(layout, "Only System defined A/C Group in Must Show A/C Groups (Y/N)",
                                              values.get("ShowGroup", ""))
        self.widgets["DonotShowGroup"] = _add_line(layout, "Only System defined A/C Group in Don't Show A/C Groups (Y/N)",
                                                   values.get("DonotShowGroup", ""))

        # Section 3: Voucher Entry
        layout = self._add_section("Voucher Entry")
        self.widgets["ToBy"] = _add_line(layout, "Use To/By Instead of Cr/Dr During Entry (Y/N)",
                                         values.get("ToBy", ""))
        self.widgets["OnLineAdjustment"] = _add_line(layout, "Online Adjustment (Y/N)",
                                                     values.get("OnLineAdjustment", ""))
        self.widgets["FilterAC"] = _add_line(layout, "Enable A/c Help Filter (Y/N)",
                                             values.get("FilterAC", ""))
        self.widgets["ShowCityName"] = _add_line(layout, "Show City Name in A/C Help (Y/N)",
                                                 values.get("ShowCityName", ""))
        self.widgets["ShowCurrentBalance"] = _add_line(layout, "Show Ledger Current Balance (Y/N)",
                                                       values.get("ShowCurrentBalance", ""))
        self.widgets["CreditLimit"] = _add_line(layout, "Limit Check for Creditors (Y/N)",
                                                values.get("CreditLimit", ""))
        self.widgets["DebitLimit"] = _add_line(layout, "Limit Check for Debtors (Y/N)",
                                               values.get("DebitLimit", ""))
        self.widgets["NegativeCashBalance"] = _add_line(layout, "Warn on Negative Cash Balance (Y/N)",
                                                        values.get("NegativeCashBalance", ""))
        self.widgets["AddressHelp"] = _add_line(layout, "Show A/c Group && Address (Y/N)",
                                                values.get("AddressHelp", ""))

        # Section 4: Display
        layout = self._add_section("Display")
        self.widgets["VerticleBalanceSheet"] = _add_line(layout, "Show Verticle Balance Sheet (Y/N)",
                                                         values.get("VerticleBalanceSheet", ""))
        self.widgets["LedDivCode"] = _add_line(layout, "Show Division Code in Ledger (Y/N)",
                                               values.get("LedDivCode", ""))
        self.widgets["LedSiteCode"] = _add_line(layout, "Show Site Code in Ledger (Y/N)",
                                                values.get("LedSiteCode", ""))
        self.widgets["LedPrefix"] = _add_line(layout, "Show Vr.Prefix in Ledger (Y/N)",
                                              values.get("LedPrefix", ""))
        self.widgets["ShowQty"] = _add_line(layout, "Show Monthly Summary (Y/N)",
                                            values.get("ShowQty", ""))
        self.widgets["ShowGroup"] = _add_line(layout, "Show A/c Group && Address (Y/N)",
                                              values.get("ShowGroup", ""))
        self.widgets["CashBookBalance"] = _add_line(layout, "Show Balance in Cash/Bank Book (Y/N)",
                                                    values.get("CashBookBalance", ""))

        # Section 5: Reports
        layout = self._add_section("Reports")
        self.widgets["RepToBy"] = _add_line(layout, "Want to Print To/By in place of Cr/Dr (Y/N)",
                                            values.get("RepToBy", ""))
        self.widgets["MonthTotal"] = _add_line(layout, "Separate Page for each day in Cash/Bank Book (Y/N)",
                                               values.get("MonthTotal", ""))
        self.widgets["CashBookPage"] = _add_line(layout, "Page No. Should be Printed on the Report (Y/N)",
                                                 values.get("CashBookPage", ""))
        self.widgets["titlerfill"] = _add_line(layout, "Character to fill the lines in the report",
                                               values.get("titlerfill", ""))
        self.widgets["daterfill"] = _add_line(layout, "Report Date Should be Printed on the Report (Y/N)",
                                              values.get("daterfill", ""))
        self.widgets["pagenofill"] = _add_line(layout, "Company Name And Address Position on the Report (L/M)",
                                               values.get("pagenofill", ""))

        # Section 6: Opening/Closing Stock
        layout = self._add_section("Opening/Closing Stock Values")
        self.widgets["OpStockQTY"] = _add_line(layout, "Open.Qty (Slab 1)",
                                               values.get("OpStockQTY", ""))
        self.widgets["OpStockValue"] = _add_line(layout, "Open.Value (Slab 1)",
                                                 values.get("OpStockValue", ""))
        self.widgets["ClStockQTY"] = _add_line(layout, "Clos.Qty (Slab 6)",
                                               values.get("ClStockQTY", ""))
        self.widgets["ClStockValue"] = _add_line(layout, "Clos.Value (Slab 6)",
                                                 values.get("ClStockValue", ""))

        # Section 7: TOD Printing
        layout = self._add_section("TOD Printing")
        self.widgets["RunPIF"] = _add_line(layout, "RunPIF",
                                           values.get("RunPIF", ""))

        # Section 8: Tagada Headers/Footers
        layout = self._add_section("Tagada Headers (Outstanding Letters)")
        for i in range(1, 6):
            self.widgets[f"TagadaHeader{i}"] = _add_line(layout, f"Header {i}",
                                                         values.get(f"TagadaHeader{i}", ""))

        layout = self._add_section("Tagada Footers (Outstanding Letters)")
        for i in range(1, 6):
            self.widgets[f"TagadaFooter{i}"] = _add_line(layout, f"Footer {i}",
                                                         values.get(f"TagadaFooter{i}", ""))

        # Section 9: Misc
        layout = self._add_section("Miscellaneous")
        self.widgets["linefiller"] = _add_line(layout, "Line Filler Character",
                                               values.get("linefiller", ""))
        self.widgets["PDCDt"] = _add_line(layout, "PDC Date",
                                          values.get("PDCDt", ""))
        self.widgets["PreBal"] = _add_line(layout, "Pre Balance",
                                           values.get("PreBal", ""))
        self.widgets["CityNameDisp"] = _add_line(layout, "City Name Display",
                                                 values.get("CityNameDisp", ""))

        self.status.setText(f"{len(values)} settings loaded")

    def _save(self):
        """Save all changes to DB."""
        changes = {}
        for key, widget in self.widgets.items():
            val = widget.text().strip()
            if val:  # Only save non-empty
                changes[key] = val

        if not changes:
            QMessageBox.information(self, "FA Environment", "No changes to save")
            return

        try:
            fa_enviro.update_settings(changes)
            self.status.setText(f"Saved {len(changes)} settings")
            QMessageBox.information(self, "FA Environment",
                                    f"Saved {len(changes)} settings successfully")
        except Exception as exc:
            self.status.setText(f"Save failed: {exc}")
            QMessageBox.critical(self, "FA Environment", f"Save failed: {exc}")

    def _integrity_check(self):
        """Run account integrity check (VB6 BtnIntegrity)."""
        QMessageBox.information(self, "Integrity Check",
                                "Integrity check launches account verification tool.\n"
                                "This is a long-running operation that checks:\n"
                                "- ACGROUP/SubGroup consistency\n"
                                "- Ledger SubCode validity\n"
                                "- Opening balances in E/R groups\n"
                                "- Date-wise transaction sums\n"
                                "Implementation deferred - run from VB6 for now.")
        self.status.setText("Integrity check - see VB6 for full tool")


def _add_line(layout: QFormLayout, label: str, default="") -> QLineEdit:
    """Helper to add a line to form layout."""
    w = QLineEdit()
    w.setText(str(default) if default is not None else "")
    w.setToolTip(label)
    lbl = QLabel(label)
    lbl.setWordWrap(True)
    lbl.setMinimumWidth(400)
    layout.addRow(lbl, w)
    return w


def open_fa_environment(parent=None):
    dialog = FAEnviroDialog(parent)
    dialog.exec()
    return dialog


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_fa_environment()
    raise SystemExit(app.exec())

# ──────────────────────────────────────────────────────────────────────
# Group Reservation UI (VB6: resGroup.frm)
# ──────────────────────────────────────────────────────────────────────

"""Group Reservation UI (VB6: resGroup.frm)

VB6 Pattern:
- Master booking (GroupProf) with sub-bookings for each room
- TopCtrl1 navigation: Previous/Next/Print/Exit
- DGHelp for group profile lookup
- DGCity, DGTravelAg, DGBusiness, DGMarketSeg for lookups
- FGrid for room details grid
- Navigation: Previous/Next/Print/Exit buttons
"""

from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, Qt
from PyQt6.QtGui import QFont, QShortcut, QKeySequence
from PyQt6.QtWidgets import (QApplication, QDateEdit, QDialog, QFormLayout,
                             QHBoxLayout, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget, QComboBox, QGroupBox,
                             QScrollArea)

from HMS_py.core import db
from HMS_py.core.front_office import group_booking, roomcategory, roommaster
from HMS_py.ui import theme as _theme


def _cell(val, *, align_right: bool = False):
    if isinstance(val, (datetime.date, datetime.datetime)):
        val = f"{val:%d/%b/%Y}"
    it = QTableWidgetItem("" if val is None else str(val))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    if align_right:
        it.setTextAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
    return it


class GroupReservationBrowser(QDialog):
    """VB6 resGroup.frm: Group Reservation Master Browser.

    Features:
    - Search group bookings by name/code
    - Create new group booking (master + sub-bookings)
    - Edit existing group booking
    - View group details with sub-bookings
    - Cancel group booking
    - Print group report
    """

    COLS = [("BookNo", 0), ("Date", 1), ("Guest Name", 2), ("Arrival", 3),
            ("Departure", 4), ("Rooms", 5), ("Status", 6), ("User", 7), ("AE", 8)]

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Group Reservation Master - HMS_py")
        self.resize(1100, 650)
        self._build_ui()
        self.reload()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Toolbar
        self.tbl = QTableWidget(0, len(self.COLS))
        self.tbl.setHorizontalHeaderLabels([c[0] for c in self.COLS])
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        self.tbl.cellDoubleClicked.connect(lambda *_: self._edit())
        root.addWidget(self.tbl)

        self.lblState = QLabel(
            "State: Idle | New = PYT* test group, Edit=fields, Cancel=VB6 flow")
        root.addWidget(self.lblState)

        btns = QHBoxLayout()
        self.btnNew = QPushButton("New Group")
        self.btnNew.setToolTip("Create new group booking (Ctrl+N)")
        self.btnEdit = QPushButton("Edit Group")
        self.btnEdit.setToolTip("Edit selected group (Ctrl+E)")
        self.btnView = QPushButton("View Details")
        self.btnView.setToolTip("View group with sub-bookings (Ctrl+V)")
        self.btnCancel = QPushButton("Cancel Group")
        self.btnCancel.setToolTip("Cancel group booking (Ctrl+Del)")
        self.btnPrint = QPushButton("Print Report")
        self.btnPrint.setToolTip("Print group report (Ctrl+P)")
        self.btnRefresh = QPushButton("Refresh (F5)")
        self.btnRefresh.setToolTip("Reload group list (F5)")
        self.btnClose = QPushButton("Close")
        self.btnClose.setToolTip("Close this window (Esc)")
        for b in (self.btnNew, self.btnEdit, self.btnView, self.btnCancel,
                  self.btnPrint, self.btnRefresh, self.btnClose):
            btns.addWidget(b)
        root.addLayout(btns)

        # Signals
        self.btnNew.clicked.connect(self._new)
        self.btnEdit.clicked.connect(self._edit)
        self.btnView.clicked.connect(self._view)
        self.btnCancel.clicked.connect(self._cancel)
        self.btnPrint.clicked.connect(self._print)
        self.btnRefresh.clicked.connect(self.reload)
        self.btnClose.clicked.connect(self.reject)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+N"), self, activated=self._new)
        QShortcut(QKeySequence("Ctrl+E"), self, activated=self._edit)
        QShortcut(QKeySequence("Ctrl+V"), self, activated=self._view)
        QShortcut(QKeySequence("Ctrl+Del"), self, activated=self._cancel)
        QShortcut(QKeySequence("Ctrl+P"), self, activated=self._print)
        QShortcut(QKeySequence("F5"), self, activated=self.reload)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

        self.reload()

    def reload(self, keep_bookno: int | None = None):
        rows = group_booking.list_group_bookings()
        self.tbl.setRowCount(len(rows))
        for r, row in enumerate(rows):
            vals = [row["bookno"], row["vdate"], row["guestname"],
                    row["arrdate"], row["depdate"], row["noofrooms"],
                    row["resstatus"], row["u_name"], row["u_ae"]]
            for c, v in enumerate(vals):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                it = QTableWidgetItem("" if v is None else str(v))
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                it.setForeground(QColor(_theme.palette()["text"]))
                self.tbl.setItem(r, c, it)
        if keep_bookno is not None:
            for r, row in enumerate(rows):
                try:
                    if int(row["bookno"]) == keep_bookno:
                        self.tbl.selectRow(r)
                        break
                except (TypeError, ValueError):
                    continue
        elif rows:
            self.tbl.selectRow(0)

    def _selected_bookno(self) -> int | None:
        r = self.tbl.currentRow()
        if r < 0:
            return None
        item = self.tbl.item(r, 0)
        if not item or not item.text().strip():
            return None
        try:
            return int(item.text())
        except ValueError:
            return None

    def _require_pyt(self, bookno: int):
        row = group_booking.get_group_details(bookno)
        if not row:
            raise ValueError(f"Group booking {bookno} nahi mila")
        if str(row.get("cancel") or "").upper() == "Y":
            raise ValueError(
                f"Group {bookno} CANCELLED hai - edit/cancel blocked "
                "(VB6 rule: Cancel='Y' pe koi write nahi)")
        if not str(row["guestname"]).upper().startswith("PYT"):
            raise ValueError(
                "Safety: sirf PYT* test-group bookings edit/cancel ho sakti hain "
                "(production data VB6 EXE se)")
        return row

    def _new(self):
        dlg = GroupBookingDialog(self, user=self.user)
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload(keep_bookno=dlg.result_bookno)

    def _edit(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Edit", "Pehle row select karo")
            return
        try:
            row = self._require_pyt(bookno)
        except ValueError as e:
            QMessageBox.warning(self, "Edit", str(e)); return
        dlg = GroupBookingDialog(self, user=self.user, group_data=group_booking.get_group_details(bookno))
        if dlg.exec() == dlg.DialogCode.Accepted:
            self.reload(keep_bookno=bookno)

    def _view(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "View", "Pehle row select karo")
            return
        try:
            group_data = group_booking.get_group_details(bookno)
        except Exception as e:
            QMessageBox.warning(self, "View", str(e)); return
        dlg = GroupDetailDialog(self, group_data=group_data, user=self.user)
        dlg.exec()

    def _cancel(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Cancel", "Pehle row select karo")
            return
        try:
            self._require_pyt(bookno)
        except ValueError as e:
            QMessageBox.warning(self, "Cancel", str(e)); return
        if QMessageBox.question(
                self, "Cancel Group",
                f"Group #{bookno} cancel karein? (VB6 flow: Cancel='Y', "
                "record rahega)") != QMessageBox.StandardButton.Yes:
            return
        try:
            group_booking.cancel_group_booking(bookno, user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Cancel", str(e)); return
        except Exception as e:
            QMessageBox.critical(self, "Cancel", f"DB error: {e}"); return
        self.lblState.setText(f"State: Idle | Group #{bookno} cancelled")
        self.reload(keep_bookno=bookno)

    def _print(self):
        bookno = self._selected_bookno()
        if bookno is None:
            QMessageBox.information(self, "Print", "Pehle row select karo")
            return
        try:
            group_data = group_booking.get_group_details(bookno)
        except Exception as e:
            QMessageBox.critical(self, "Print", str(e)); return
        # TODO: Implement group report printing
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text(f"Group Booking Report for #{bookno}\n(To be implemented)", "Group Report", self)


class GroupBookingDialog(QDialog):
    """Dialog for creating/editing a group booking with sub-bookings."""

    def __init__(self, parent=None, user: str = "SA", group_data: dict | None = None):
        super().__init__(parent)
        self.user = user
        self.group_data = group_data
        self.result_bookno = None
        self.is_edit = group_data is not None
        self.setWindowTitle("Edit Group Booking" if self.is_edit else "New Group Booking")
        self.resize(900, 700)
        self.setModal(True)
        self._build_ui()
        if self.is_edit:
            self._load_group_data()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Master group info
        master_frame = QGroupBox("Group Master Details")
        master_layout = QFormLayout(master_frame)

        self.edGroupName = QLineEdit()
        self.edGroupName.setPlaceholderText("Group master name (must start with PYT*)")
        master_layout.addRow("Group Name (PYT*)", self.edGroupName)

        self.edArr = QDateEdit(QDate.currentDate())
        self.edArr.setCalendarPopup(True)
        master_layout.addRow("Arrival", self.edArr)

        self.edDep = QDateEdit(QDate.currentDate().addDays(1))
        self.edDep.setCalendarPopup(True)
        master_layout.addRow("Departure", self.edDep)

        self.edAdult = QLineEdit("1")
        master_layout.addRow("Default Adults", self.edAdult)

        self.edChild = QLineEdit("0")
        master_layout.addRow("Default Children", self.edChild)

        self.edRemarks = QLineEdit(".")
        master_layout.addRow("Remarks", self.edRemarks)

        root.addWidget(master_frame)

        # Sub-bookings grid
        sub_frame = QGroupBox("Sub-Bookings (Rooms)")
        sub_layout = QVBoxLayout(sub_frame)

        self.sub_tbl = QTableWidget(0, 8)
        self.sub_tbl.setHorizontalHeaderLabels(
            ["Room No", "Guest Name", "Arrival", "Departure",
             "Adults", "Children", "Rate", "Category"])
        self.sub_tbl.horizontalHeader().setStretchLastSection(True)
        sub_layout.addWidget(self.sub_tbl)

        sub_btns = QHBoxLayout()
        btnAddRoom = QPushButton("Add Room")
        btnAddRoom.clicked.connect(self._add_sub_booking)
        sub_btns.addWidget(btnAddRoom)

        btnDelRoom = QPushButton("Remove Room")
        btnDelRoom.clicked.connect(self._del_sub_booking)
        sub_btns.addWidget(btnDelRoom)
        sub_btns.addStretch()
        sub_layout.addLayout(sub_btns)

        root.addWidget(sub_frame)

        # Buttons
        btns = QHBoxLayout()
        self.btnSave = QPushButton("Save Group")
        self.btnSave.setDefault(True)
        self.btnSave.clicked.connect(self._save)
        btns.addWidget(self.btnSave)

        btnCancel = QPushButton("Cancel")
        btnCancel.clicked.connect(self.reject)
        btns.addWidget(btnCancel)
        root.addLayout(btns)

        # Shortcuts
        from PyQt6.QtGui import QShortcut, QKeySequence
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save)
        QShortcut(QKeySequence("Esc"), self, activated=self.reject)

    def _load_group_data(self):
        # Load master data
        self.edGroupName.setText(self.group_data.get("guestname", ""))
        arr = self.group_data.get("arrdate")
        if hasattr(arr, 'year'):
            self.edArr.setDate(QDate(arr.year, arr.month, arr.day))
        dep = self.group_data.get("depdate")
        if hasattr(dep, 'year'):
            self.edDep.setDate(QDate(dep.year, dep.month, dep.day))
        self.edAdult.setText(str(self.group_data.get("adult", 1)))
        self.edChild.setText(str(self.group_data.get("child", 0)))
        self.edRemarks.setText(self.group_data.get("remarks", "."))

        # Load sub-bookings
        subs = self.group_data.get("sub_bookings", [])
        self.sub_tbl.setRowCount(len(subs))
        for r, sub in enumerate(subs):
            vals = [
                sub.get("roomno", ""), sub.get("guestname", ""),
                sub.get("arrdate", ""), sub.get("depdate", ""),
                sub.get("adult", 1), sub.get("child", 0),
                sub.get("roomrate", 0), sub.get("roomcat", "")
            ]
            for c, v in enumerate(vals):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                self.sub_tbl.setItem(r, c, QTableWidgetItem("" if v is None else str(v)))

    def _add_sub_booking(self):
        dlg = SubBookingDialog(self)
        if dlg.exec() == dlg.DialogCode.Accepted:
            row = self.sub_tbl.rowCount()
            self.sub_tbl.insertRow(row)
            for c, v in enumerate(dlg.result):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                self.sub_tbl.setItem(row, c, QTableWidgetItem("" if v is None else str(v)))

    def _del_sub_booking(self):
        row = self.sub_tbl.currentRow()
        if row >= 0:
            self.sub_tbl.removeRow(row)

    def _save(self):
        # Validate master
        gname = self.edGroupName.text().strip()
        if not gname:
            QMessageBox.warning(self, "Save", "Group name zaroori hai")
            return
        if not gname.upper().startswith("PYT"):
            QMessageBox.warning(self, "Save", "Group name must start with PYT* (test data only)")
            return

        arr = self.edArr.date().toPyDate()
        dep = self.edDep.date().toPyDate()
        if arr > dep:
            QMessageBox.warning(self, "Save", "Arrival > Departure nahi ho sakta")
            return

        # Collect sub-bookings
        sub_bookings = []
        for r in range(self.sub_tbl.rowCount()):
            roomno = self.sub_tbl.item(r, 0).text() if self.sub_tbl.item(r, 0) else ""
            guest = self.sub_tbl.item(r, 1).text() if self.sub_tbl.item(r, 1) else ""
            arr_str = self.sub_tbl.item(r, 2).text() if self.sub_tbl.item(r, 2) else ""
            dep_str = self.sub_tbl.item(r, 3).text() if self.sub_tbl.item(r, 3) else ""
            adult = int(self.sub_tbl.item(r, 4).text() or "1") if self.sub_tbl.item(r, 4) else 1
            child = int(self.sub_tbl.item(r, 5).text() or "0") if self.sub_tbl.item(r, 5) else 0
            rate = float(self.sub_tbl.item(r, 6).text() or "0") if self.sub_tbl.item(r, 6) else 0.0
            roomcat = self.sub_tbl.item(r, 7).text() if self.sub_tbl.item(r, 7) else ""

            if not roomno or not guest:
                QMessageBox.warning(self, "Save", f"Row {r+1}: Room No aur Guest Name zaroori hain")
                return

            try:
                arr_d = datetime.datetime.strptime(arr_str, "%d/%b/%Y").date()
                dep_d = datetime.datetime.strptime(dep_str, "%d/%b/%Y").date()
            except ValueError:
                QMessageBox.warning(self, "Save", f"Row {r+1}: Invalid date format (dd/Mon/yyyy)")
                return

            if arr_d > dep_d:
                QMessageBox.warning(self, "Save", f"Row {r+1}: Arrival > Departure")
                return

            sub_bookings.append({
                "roomno": roomno, "guestname": guest,
                "arrdate": arr_d, "depdate": dep_d,
                "adult": adult, "child": child,
                "roomrate": rate, "roomcat": roomcat,
                "nodays": (dep_d - arr_d).days, "remarks": "."
            })

        if not sub_bookings:
            QMessageBox.warning(self, "Save", "Kam se kam ek room zaroori hai")
            return

        # Build master record
        master_rec = {
            "guestname": self.edGroupName.text().strip(),
            "arrdate": self.edArr.date().toPyDate(),
            "depdate": self.edDep.date().toPyDate(),
            "adult": int(self.edAdult.text() or "1"),
            "child": int(self.edChild.text() or "0"),
            "remarks": self.edRemarks.text().strip() or ".",
        }

        try:
            from HMS_py.core.front_office import group_booking as gb
            result = gb.create_group_booking(master_rec, sub_bookings, user=self.user)
            self.result_bookno = result["master_bookno"]
            QMessageBox.information(self, "Save",
                f"Group booking created!\nMaster: #{result['master_bookno']} ({result['sub_bookings']} rooms)")
            self.accept()
        except ValueError as e:
            QMessageBox.warning(self, "Save", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Save", f"DB error: {e}")


class SubBookingDialog(QDialog):
    """Dialog for adding/editing a sub-booking room."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Add Room to Group")
        self.setModal(True)
        self.result = None
        self.resize(450, 400)
        self._build_ui()

    def _build_ui(self):
        form = QFormLayout(self)

        self.edRoomNo = QLineEdit()
        self.edRoomNo.setPlaceholderText("Room number (e.g. 101)")
        form.addRow("Room No *", self.edRoomNo)

        self.edGuest = QLineEdit()
        self.edGuest.setPlaceholderText("Guest full name")
        form.addRow("Guest Name *", self.edGuest)

        self.deArr = QDateEdit(QDate.currentDate())
        self.deArr.setCalendarPopup(True)
        form.addRow("Arrival *", self.deArr)

        self.deDep = QDateEdit(QDate.currentDate().addDays(1))
        self.deDep.setCalendarPopup(True)
        form.addRow("Departure *", self.deDep)

        self.edAdult = QLineEdit("1")
        form.addRow("Adults", self.edAdult)

        self.edChild = QLineEdit("0")
        form.addRow("Children", self.edChild)

        self.edRate = QLineEdit("0")
        form.addRow("Rate", self.edRate)

        self.edCat = QLineEdit()
        self.edCat.setPlaceholderText("Room category code (optional)")
        form.addRow("Category", self.edCat)

        btns = QHBoxLayout()
        ok = QPushButton("OK"); ok.setDefault(True)
        cancel = QPushButton("Cancel")
        btns.addStretch(); btns.addWidget(ok); btns.addWidget(cancel)
        form.addRow(btns)
        ok.clicked.connect(self._accept)
        cancel.clicked.connect(self.reject)

    def _accept(self):
        roomno = self.edRoomNo.text().strip()
        guest = self.edGuest.text().strip()
        if not roomno or not guest:
            QMessageBox.warning(self, "Add Room", "Room No aur Guest Name zaroori hain")
            return
        if self.deArr.date() > self.deDep.date():
            QMessageBox.warning(self, "Add Room", "Arrival > Departure nahi ho sakta")
            return

        self.result = {
            "roomno": roomno,
            "guestname": guest,
            "arrdate": self.deArr.date().toPyDate(),
            "depdate": self.deDep.date().toPyDate(),
            "adult": int(self.edAdult.text() or "1"),
            "child": int(self.edChild.text() or "0"),
            "roomrate": float(self.edRate.text() or "0"),
            "roomcat": self.edCat.text().strip(),
        }
        self.accept()


class GroupDetailDialog(QDialog):
    """Dialog for viewing group booking details with sub-bookings."""

    def __init__(self, parent=None, group_data: dict = None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.group_data = group_data
        self.setWindowTitle(f"Group Details - #{group_data.get('bookno', '?')}")
        self.resize(900, 650)
        self.setModal(True)
        self._build_ui()
        self._load_data()

    def _build_ui(self):
        root = QVBoxLayout(self)

        # Master info
        info_frame = QGroupBox("Group Master")
        info_layout = QFormLayout(info_frame)

        self.lblBookNo = QLabel()
        self.lblGuest = QLabel()
        self.lblArr = QLabel()
        self.lblDep = QLabel()
        self.lblRooms = QLabel()
        self.lblStatus = QLabel()
        self.lblUser = QLabel()

        for lbl in (self.lblBookNo, self.lblGuest, self.lblArr, self.lblDep,
                    self.lblRooms, self.lblStatus, self.lblUser):
            lbl.setStyleSheet("font-weight: bold;")

        info_layout.addRow("BookNo:", self.lblBookNo)
        info_layout.addRow("Guest:", self.lblGuest)
        info_layout.addRow("Arrival:", self.lblArr)
        info_layout.addRow("Departure:", self.lblDep)
        info_layout.addRow("Rooms:", self.lblRooms)
        info_layout.addRow("Status:", self.lblStatus)
        info_layout.addRow("User:", self.lblUser)

        root.addWidget(info_frame)

        # Sub-bookings grid
        self.sub_tbl = QTableWidget(0, 8)
        self.sub_tbl.setHorizontalHeaderLabels(
            ["Room", "Guest", "Arrival", "Departure",
             "Adults", "Children", "Rate", "Category"])
        self.sub_tbl.horizontalHeader().setStretchLastSection(True)
        self.sub_tbl.setAlternatingRowColors(True)
        root.addWidget(self.sub_tbl)

        # Buttons
        btns = QHBoxLayout()
        btnPrint = QPushButton("Print Group Report")
        btnPrint.clicked.connect(self._print)
        btns.addWidget(btnPrint)
        btns.addStretch()
        btnClose = QPushButton("Close")
        btnClose.clicked.connect(self.reject)
        btns.addWidget(btnClose)
        root.addLayout(btns)

    def _load_data(self):
        g = self.group_data
        self.lblBookNo.setText(str(g.get("bookno", "")))
        self.lblGuest.setText(f"{g.get('guestname', '')} ({g.get('guestprof', '')})")
        arr = g.get("arrdate")
        dep = g.get("depdate")
        self.lblArr.setText(f"{arr:%d/%b/%Y}" if hasattr(arr, 'strftime') else str(arr))
        self.lblDep.setText(f"{dep:%d/%b/%Y}" if hasattr(dep, 'strftime') else str(dep))
        self.lblRooms.setText(str(len(g.get("sub_bookings", []))))
        self.lblStatus.setText(g.get("resstatus", ""))
        self.lblUser.setText(f"{g.get('u_name', '')} / {g.get('u_ae', '')}")

        subs = g.get("sub_bookings", [])
        self.sub_tbl.setRowCount(len(subs))
        for r, sub in enumerate(subs):
            vals = [
                sub.get("roomno", ""), sub.get("guestname", ""),
                sub.get("arrdate", ""), sub.get("depdate", ""),
                sub.get("adult", 1), sub.get("child", 0),
                sub.get("roomrate", 0), sub.get("roomcat", "")
            ]
            for c, v in enumerate(vals):
                if isinstance(v, (datetime.date, datetime.datetime)):
                    v = f"{v:%d/%b/%Y}"
                self.sub_tbl.setItem(r, c, QTableWidgetItem("" if v is None else str(v)))

    def _print(self):
        from HMS_py.ui import print_preview as _pp
        _pp.preview_text(f"Group Booking Report\n(To be implemented)", "Group Report", self)


def open_group_reservation(parent=None, user: str = "SA"):
    GroupReservationBrowser(parent, user=user).exec()


def open_group_booking_dialog(parent=None, user: str = "SA", group_data: dict | None = None):
    dlg = GroupBookingDialog(parent, user=user, group_data=group_data)
    return dlg.exec()


def main() -> int:
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    d = GroupReservationBrowser()
    d.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
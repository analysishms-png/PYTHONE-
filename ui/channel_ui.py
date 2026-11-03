"""Channel Manager UI (Phase-2 Task 5 + Phase-3 tab) — finalized design.

docs/CHANNEL_CONFIG_UI_DESIGN.md:
- Tab1 Config: masked AuthCode (one-way write, reveal toggle),
  Test Connection ladder, mock/enabled checkboxes
- Tab2 Bookings: OTA queue -> Accept (roomcat combo) -> reservation
- Tab3 Sync Log: read-only audit + purge
- Tab4 Inventory (Phase-3): date-range + preview + Push Now
Run smoke: QT_QPA_PLATFORM=offscreen python -m HMS_py.ui.channel_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QCheckBox, QComboBox,
                             QDateEdit, QDialog, QFormLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QSpinBox, QTabWidget,
                             QTableWidget, QTableWidgetItem, QVBoxLayout,
                             QWidget)

from HMS_py.core import db
from HMS_py.core.channel import booking_in as bi
from HMS_py.core.channel import client as client_mod
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import inventory as ch_inv
from HMS_py.core.channel import rates as ch_rates
from HMS_py.core.channel import roommap, synclog
from HMS_py.core.channel.ensure import ensure_tables
from HMS_py.ui import theme as _theme


def _dark_item(text: str) -> QTableWidgetItem:
    it = QTableWidgetItem(text)
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


class ChannelManagerDialog(QDialog):
    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        self.setWindowTitle("Channel Manager (eZee) - HMS_py")
        self.resize(940, 640)
        self._build_ui()
        self._load_config()

    # ------------------------------------------------------------ UI
    def _build_ui(self):
        self.tabs = QTabWidget()
        self.tabs.addTab(self._build_config_tab(), "Config")
        self.tabs.addTab(self._build_bookings_tab(), "Bookings")
        self.tabs.addTab(self._build_synclog_tab(), "Sync Log")
        self.tabs.addTab(self._build_inventory_tab(), "Inventory")
        root = QVBoxLayout(self)
        root.addWidget(self.tabs)

        self.lbl_state = QLabel("State: ...")
        p = _theme.palette()
        self.lbl_state.setStyleSheet(
            f"color:{p['text']}; padding:4px; "
            f"background:{p['glass_tint']};")
        root.addWidget(self.lbl_state)
        self._refresh_state()

    # ---- Tab 1: Config ----
    def _build_config_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)
        grp = QGroupBox("Connection (eZee YCS)")
        form = QFormLayout(grp)

        self.ed_hotel = QLineEdit()
        self.ed_hotel.setMaxLength(20)
        self.ed_hotel.setPlaceholderText("eZee HotelCode (YCS portal)")
        self.ed_auth = QLineEdit()
        self.ed_auth.setMaxLength(120)
        self.ed_auth.setEchoMode(QLineEdit.EchoMode.Password)
        self.ed_auth.setPlaceholderText("•••••••• (stored — DPAPI)")
        self.btn_reveal = QPushButton("👁")
        self.btn_reveal.setFixedWidth(36)
        self.btn_reveal.setCheckable(True)
        self.btn_reveal.toggled.connect(self._toggle_reveal)
        auth_row = QHBoxLayout()
        auth_row.addWidget(self.ed_auth)
        auth_row.addWidget(self.btn_reveal)
        self.ed_url = QLineEdit()
        self.ed_url.setPlaceholderText("https://live.ipms247.com")
        self.ed_ua = QLineEdit()
        self.ed_ua.setPlaceholderText("HMSpy-PMS/1.0")

        form.addRow("Hotel Code *", self.ed_hotel)
        form.addRow("Auth Code *", auth_row)
        form.addRow("Base URL", self.ed_url)
        form.addRow("User-Agent", self.ed_ua)
        v.addWidget(grp)

        grp2 = QGroupBox("Behaviour")
        form2 = QFormLayout(grp2)
        self.sp_poll = QSpinBox()
        self.sp_poll.setRange(1, 1440)
        self.sp_poll.setValue(15)
        self.chk_enabled = QCheckBox("Enabled (master switch)")
        self.chk_mock = QCheckBox("Mock Mode (no network — default ON)")
        self.chk_mock.setChecked(True)
        self.chk_autopush = QCheckBox("Auto-push inventory after Night Audit")
        self.sp_window = QSpinBox()
        self.sp_window.setRange(1, 365)
        self.sp_window.setValue(30)
        form2.addRow("Poll Interval (min)", self.sp_poll)
        form2.addRow("", self.chk_enabled)
        form2.addRow("", self.chk_mock)
        form2.addRow("", self.chk_autopush)
        form2.addRow("Push Window (days)", self.sp_window)
        v.addWidget(grp2)

        btns = QHBoxLayout()
        self.btn_test = QPushButton("Test Connection")
        self.btn_test.setToolTip("Mode-aware probe (mock = offline ping)")
        self.btn_save = QPushButton("Save (Ctrl+S)")
        self.btn_cancel = QPushButton("Cancel (Esc)")
        btns.addWidget(self.btn_test)
        btns.addStretch()
        btns.addWidget(self.btn_save)
        btns.addWidget(self.btn_cancel)
        v.addLayout(btns)

        self.btn_test.clicked.connect(self._test_connection)
        self.btn_save.clicked.connect(self._save_config)
        self.btn_cancel.clicked.connect(self.reject)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._save_config)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        return tab

    # ---- Tab 2: Bookings ----
    def _build_bookings_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)
        top = QHBoxLayout()
        self.cmb_filter = QComboBox()
        self.cmb_filter.addItems(["Unprocessed", "All"])
        self.cmb_filter.currentIndexChanged.connect(self._refresh_bookings)
        btn_refresh = QPushButton("Refresh (F5)")
        btn_refresh.clicked.connect(self._refresh_bookings)
        btn_accept = QPushButton("Accept → Reservation")
        btn_accept.clicked.connect(self._accept_selected)
        top.addWidget(QLabel("Show:"))
        top.addWidget(self.cmb_filter)
        top.addStretch()
        top.addWidget(btn_accept)
        top.addWidget(btn_refresh)
        v.addLayout(top)

        self.bk_table = QTableWidget(0, 8)
        self.bk_table.setHorizontalHeaderLabels(
            ["EzeeBookingId", "Status?", "RoomType", "Guest", "Arr",
             "Dep", "Amount", "BookingDocId"])
        self.bk_table.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        self.bk_table.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.bk_table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        v.addWidget(self.bk_table)
        self._refresh_bookings()
        return tab

    # ---- Tab 3: Sync Log ----
    def _build_synclog_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)
        top = QHBoxLayout()
        btn_purge = QPushButton("Purge > 90 days")
        btn_purge.clicked.connect(self._purge_log)
        top.addStretch()
        top.addWidget(btn_purge)
        v.addLayout(top)
        self.log_table = QTableWidget(0, 6)
        self.log_table.setHorizontalHeaderLabels(
            ["Id", "Dir", "RequestType", "Status", "Retries", "When"])
        self.log_table.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.log_table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        v.addWidget(self.log_table)
        self._refresh_log()
        return tab

    # ---- Tab 4: Inventory (Phase-3) ----
    def _build_inventory_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)
        form = QFormLayout()
        self.dt_from = QDateEdit()
        self.dt_to = QDateEdit()
        today = datetime.date.today()
        for w, d in ((self.dt_from, today), (self.dt_to,
                                             today + datetime.timedelta(30))):
            w.setDate(d)
            w.setCalendarPopup(True)
            w.setDisplayFormat("yyyy-MM-dd")
        form.addRow("From", self.dt_from)
        form.addRow("To", self.dt_to)
        v.addLayout(form)

        btns = QHBoxLayout()
        btn_preview = QPushButton("Preview Free Rooms")
        btn_preview.clicked.connect(self._preview_inventory)
        self.btn_push = QPushButton("Push Inventory Now")
        self.btn_push.clicked.connect(self._push_inventory)
        btn_preview_rates = QPushButton("Preview Rates/StopSell")
        btn_preview_rates.clicked.connect(self._preview_rates)
        self.btn_push_rates = QPushButton("Push Rates Now")
        self.btn_push_rates.clicked.connect(self._push_rates)
        self.btn_push_stop = QPushButton("Push StopSell Now")
        self.btn_push_stop.clicked.connect(self._push_stop_sell)
        for w in (btn_preview, self.btn_push, btn_preview_rates,
                  self.btn_push_rates, self.btn_push_stop):
            btns.addWidget(w)
        btns.addStretch()
        v.addLayout(btns)

        self.inv_table = QTableWidget(0, 6)
        self.inv_table.setHorizontalHeaderLabels(
            ["Date", "RoomCat", "Ezee RoomType", "Free/Rate",
             "Plan/Occ", "Type"])
        self.inv_table.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.inv_table.horizontalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.Stretch)
        v.addWidget(self.inv_table)
        return tab

    # ------------------------------------------------------------ config
    def _load_config(self):
        cfg = cfg_mod.get()
        if not cfg:
            return
        self.ed_hotel.setText(cfg["hotel_code"])
        self.ed_url.setText(cfg["base_url"])
        self.ed_ua.setText(cfg["user_agent"])
        self.sp_poll.setValue(int(cfg["poll_interval_min"] or 15))
        self.chk_enabled.setChecked(cfg["enabled_yn"] == "Y")
        self.chk_mock.setChecked(cfg["mock_yn"] == "Y")

    def _collect(self) -> dict:
        return {
            "hotel_code": self.ed_hotel.text().strip(),
            "auth_code": self.ed_auth.text().strip() or None,
            "base_url": self.ed_url.text().strip() or
            cfg_mod.DEFAULT_URL,
            "user_agent": self.ed_ua.text().strip(),
            "poll_interval_min": self.sp_poll.value(),
            "enabled_yn": "Y" if self.chk_enabled.isChecked() else "N",
            "mock_yn": "Y" if self.chk_mock.isChecked() else "N",
        }

    def _save_config(self):
        try:
            cfg_mod.save(self._collect())
            self._refresh_state()
            QMessageBox.information(self, "Channel Manager",
                                    "Configuration saved.")
        except Exception as e:
            QMessageBox.critical(self, "Save fail", str(e))

    def _toggle_reveal(self, checked: bool):
        self.ed_auth.setEchoMode(
            QLineEdit.EchoMode.Normal if checked
            else QLineEdit.EchoMode.Password)

    def _test_connection(self):
        self.btn_test.setEnabled(False)
        try:
            cl = client_mod.EzeeClient(user=self.user)
            mode = cl.mode
            if mode in ("no_config", "mock"):
                resp = cl.fetch_room_information()
                n = len(resp.get("RoomInformation") or [])
                QMessageBox.information(
                    self, "Test Connection",
                    f"MOCK OK — RoomInformation: {n} types (no network)")
            elif mode == "disabled":
                QMessageBox.warning(
                    self, "Test Connection",
                    "Disabled: EnabledYN=N ya credentials missing")
            else:
                resp = cl.fetch_room_information()
                n = len(resp.get("RoomInformation") or [])
                QMessageBox.information(
                    self, "Test Connection",
                    f"LIVE OK — {n} room types from eZee")
            self._refresh_state()
        except Exception as e:
            QMessageBox.critical(self, "Test Connection", f"LIVE FAIL: {e}")
        finally:
            self.btn_test.setEnabled(True)

    def _refresh_state(self):
        cfg = cfg_mod.get()
        if not cfg:
            self.lbl_state.setText("State: not configured (mock default)")
            return
        mode = client_mod.EzeeClient(user=self.user).mode
        self.lbl_state.setText(
            f"State: {mode} · HotelCode={cfg['hotel_code'] or '-'} · "
            f"last poll: {cfg['last_booking_poll_dt'] or '-'}")

    # ------------------------------------------------------------ bookings
    def _refresh_bookings(self):
        try:
            rows = bi.queue_list(
                only_unprocessed=(self.cmb_filter.currentText() ==
                                  "Unprocessed"))
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self.bk_table.setRowCount(0)
        self.bk_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = [r["ezee_booking_id"], "", r["room_type"],
                    r["guest_name"] or "(no name)",
                    str(r["arr_date"] or "")[:10],
                    str(r["dep_date"] or "")[:10],
                    f"{r['amount']:.0f}" if r["amount"] else "-",
                    r["booking_docid"]]
            for c, val in enumerate(vals):
                self.bk_table.setItem(i, c, _dark_item(val))

    def _accept_selected(self):
        sel = self.bk_table.selectionModel().selectedRows()
        if not sel:
            QMessageBox.information(self, "Accept", "Row select karo pehle.")
            return
        qid = int(self.bk_table.item(sel[0].row(), 0).text())
        # roomcat chooser: mapping se pre-select
        mappings = {m["ezee_room_type"]: m["roomcat"]
                    for m in roommap.list_all(only_active=True)}
        rt = self.bk_table.item(sel[0].row(), 2).text()
        cats = sorted({m["roomcat"] for m in roommap.list_all(
            only_active=True)}) or ["KK002"]
        pre = mappings.get(rt, cats[0])
        from PyQt6.QtWidgets import QInputDialog
        rc, ok = QInputDialog.getItem(
            self, "Accept OTA Booking", "RoomCat:", cats, 0, False)
        if not ok:
            return
        try:
            bookno = bi.accept_booking(qid, roomcat=(rc.strip() or pre),
                                       user=self.user)
            QMessageBox.information(
                self, "Accepted",
                f"Reservation ban gayi — BookNo {bookno}")
            self._refresh_bookings()
        except Exception as e:
            QMessageBox.critical(self, "Accept fail", str(e))

    # ------------------------------------------------------------ synclog
    def _refresh_log(self):
        try:
            rows = synclog.list_recent(top=200)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self.log_table.setRowCount(0)
        self.log_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = [str(r["id"]), r["direction"], r["request_type"],
                    r["status"], str(r["retries"]),
                    str(r["ent_dt"] or "")[:19]]
            for c, val in enumerate(vals):
                self.log_table.setItem(i, c, _dark_item(val))

    def _purge_log(self):
        if QMessageBox.question(
                self, "Purge", "90+ din purane sync-log rows delete?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            n = synclog.purge_older_than(90)
            QMessageBox.information(self, "Purge", f"{n} rows deleted.")
            self._refresh_log()
        except Exception as e:
            QMessageBox.critical(self, "Purge fail", str(e))

    # ------------------------------------------------------------ inventory
    def _preview_inventory(self):
        d_from = self.dt_from.date().toPyDate()
        d_to = self.dt_to.date().toPyDate()
        try:
            mappings = {m["roomcat"]: m["ezee_room_type"]
                        for m in roommap.list_all(only_active=True)}
            rows = []
            day = d_from
            while day <= d_to and len(rows) < 500:
                fr = ch_inv.free_rooms_by_cat(day)
                for rc, n in fr["free"].items():
                    rows.append((day.isoformat(), rc,
                                 mappings.get(rc, "(unmapped)"), n,
                                 "", "INV"))
                day += datetime.timedelta(days=1)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        self.inv_table.setRowCount(0)
        self.inv_table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for c, val in enumerate(r):
                self.inv_table.setItem(i, c, _dark_item(str(val)))

    def _push_inventory(self):
        if QMessageBox.question(
                self, "Push", "Inventory eZee ko push karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            out = ch_inv.push_inventory(self.dt_from.date().toPyDate(),
                                        self.dt_to.date().toPyDate(),
                                        user=self.user)
        except Exception as e:
            QMessageBox.critical(self, "Push fail", str(e))
            return
        if out.get("skipped_reason"):
            QMessageBox.warning(self, "Push skipped",
                                f"Not live: {out['skipped_reason']}")
        else:
            QMessageBox.information(
                self, "Push",
                f"pushed={out['pushed']} failed={out['failed']} "
                f"calls={out['calls']} unmapped={out['unmapped']}")
        self._refresh_state()

    # ---- Phase-4: rates + stop-sell (Inventory tab me hi) ----
    def _preview_rates(self):
        d_from = self.dt_from.date().toPyDate()
        d_to = self.dt_to.date().toPyDate()
        try:
            rr = ch_rates.rate_rows(d_from, d_to)
            ss = ch_rates.stop_sell_rows(d_from, d_to)
        except Exception as e:
            QMessageBox.critical(self, "Error", str(e))
            return
        rows = []
        for r in rr["rows"]:
            rows.append((r["date"].isoformat(), r["roomcat"],
                         r["ezee_room_type"], f"{r['rate']:.0f}",
                         r["rate_plan"], "RATE"))
        for u in rr["unrated"][:100]:
            rows.append((u["date"].isoformat(), u["roomcat"], "",
                         "0 (skip)", u["plan"] or "-", "UNRATED"))
        for r in ss:
            rows.append((r["date"].isoformat(), r["roomcat"],
                         r["ezee_room_type"], "-", "StopSell", "STOP"))
        self.inv_table.setRowCount(0)
        self.inv_table.setRowCount(min(len(rows), 800))
        for i, r in enumerate(rows[:800]):
            for c, val in enumerate(r):
                self.inv_table.setItem(i, c, _dark_item(str(val)))

    def _push_rates(self):
        if QMessageBox.question(
                self, "Push Rates",
                "SetRoomRate eZee ko push karein?") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            out = ch_rates.push_rates(self.dt_from.date().toPyDate(),
                                      self.dt_to.date().toPyDate(),
                                      user=self.user)
        except Exception as e:
            QMessageBox.critical(self, "Push fail", str(e))
            return
        if out.get("skipped_reason"):
            QMessageBox.warning(self, "Push skipped",
                                f"Not live: {out['skipped_reason']}")
        else:
            QMessageBox.information(
                self, "Push Rates",
                f"pushed={out['pushed']} failed={out['failed']} "
                f"calls={out['calls']} unrated={out['unrated']}")
        self._refresh_state()

    def _push_stop_sell(self):
        if QMessageBox.question(
                self, "Push StopSell",
                "StopSell push karein? (inventory-push ke BAAD chalta "
                "hai — pehle availability, phir close)") != \
                QMessageBox.StandardButton.Yes:
            return
        try:
            out = ch_rates.push_stop_sell(self.dt_from.date().toPyDate(),
                                          self.dt_to.date().toPyDate(),
                                          user=self.user)
        except Exception as e:
            QMessageBox.critical(self, "Push fail", str(e))
            return
        if out.get("skipped_reason"):
            QMessageBox.warning(self, "Push skipped",
                                f"Not live: {out['skipped_reason']}")
        else:
            QMessageBox.information(
                self, "Push StopSell",
                f"pushed={out['pushed']} failed={out['failed']} "
                f"calls={out['calls']}")
        self._refresh_state()


def open_channel_manager(parent=None, user: str = "SA"):
    """Registry opener — ensure tables (idempotent) phir dialog."""
    try:
        ensure_tables()
    except Exception:
        pass  # UI khulega; config save par exact error dikhega
    dlg = ChannelManagerDialog(parent, user=user)
    dlg.exec()
    return dlg


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication
    app = QApplication(sys.argv)
    dlg = ChannelManagerDialog()
    dlg.show()
    shot = os.environ.get("HMS_POC_SHOT")
    if shot:
        dlg.grab().save(shot)
        print("saved:", shot)

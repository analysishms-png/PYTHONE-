"""EzeeClient — eZee YCS PMS-connectivity JSON client (mock-first).

Spec evidence (ezee_reference/pms-connectivity-openapi.yml):
- POST {base}/pmsinterface/pms_connectivity.php, JSON body:
  {RequestType, Authentication:{HotelCode, AuthCode}, ...}
- RequestTypes: FetchBooking, FetchBookings, BookingRecieve,
  UpdateRoomInventory, SetRoomRate, UpdateMinStay, UpdateStopSell,
  FetchRoomInformation
- Vendor-identifying User-Agent header.

Safety ladder (plan §6):
1. tables/config missing        -> config_only response, no network
2. MockYN='Y' (default)         -> canned mock responses, no network
3. EnabledYN='N'                -> blocked response, no network
4. EnabledYN='Y' + MockYN='N' + creds  -> LIVE http_post

Har call synclog me audit hoti hai (mock bhi — testing evidence).
"""
from __future__ import annotations

import json

from HMS_py.core import db
from HMS_py.core.channel import config as cfg_mod
from HMS_py.core.channel import synclog


class EzeeClientError(RuntimeError):
    """Client-level failure (transport ya policy)."""


class EzeeClient:
    def __init__(self, cn=None, user: str = "PYADMIN"):
        self.cn = cn
        self.user = user
        self.cfg = cfg_mod.get(cn=cn)
        self._secret = cfg_mod.get_secret(cn=cn) if self.cfg else ""

    # ---------- mode detection ----------

    @property
    def mode(self) -> str:
        """'no_config' | 'mock' | 'disabled' | 'live'"""
        if not self.cfg:
            return "no_config"
        if self.cfg["mock_yn"] == "Y":
            return "mock"
        if self.cfg["enabled_yn"] != "Y":
            return "disabled"
        if not self.cfg["hotel_code"] or not self._secret:
            return "disabled"
        return "live"

    def _audit(self, direction: str, request_type: str, req, resp,
               status: str, err: str = "") -> None:
        try:
            synclog.log(direction, request_type, req, resp, status, err,
                        user=self.user, cn=self.cn)
        except Exception:
            pass  # audit fail kabhi business call ko fail na kare

    def _request(self, request_type: str, payload_extra: dict | None,
                 timeout: float = 30.0) -> dict:
        mode = self.mode
        body = self._build_body(request_type, payload_extra or {})
        if mode in ("no_config", "mock"):
            resp = self._mock_response(request_type, body)
            self._audit("OUT", request_type, body, resp, "S")
            return resp
        if mode == "disabled":
            resp = {"success": False, "blocked": True,
                    "error": "Channel integration disabled (EnabledYN=N) "
                             "ya credentials missing"}
            self._audit("OUT", request_type, body, resp, "F",
                        "disabled-mode")
            return resp
        # live
        from HMS_py.core.http_client import http_post
        url = self.cfg["base_url"].rstrip("/") + "/pmsinterface/pms_connectivity.php"
        headers = {"User-Agent": self.cfg["user_agent"] or "HMS_py-PMS/1.0"}
        try:
            status, text, _hdrs = http_post(
                url, json_body=json.dumps(body), headers=headers,
                timeout=timeout)
        except Exception as e:
            self._audit("OUT", request_type, body, None, "F", str(e))
            raise EzeeClientError(f"eZee transport fail: {e}") from e
        self._audit("OUT", request_type, body, text,
                    "S" if status == 200 else "F",
                    "" if status == 200 else f"HTTP {status}")
        if status != 200:
            raise EzeeClientError(f"eZee HTTP {status}")
        try:
            return json.loads(text)
        except json.JSONDecodeError as e:
            raise EzeeClientError(f"eZee response JSON nahi: {e}") from e

    def _build_body(self, request_type: str, extra: dict) -> dict:
        auth = {"HotelCode": "", "AuthCode": ""}
        if self.cfg:                                   # no_config-safe
            auth["HotelCode"] = self.cfg.get("hotel_code") or ""
            auth["AuthCode"] = self._secret or ""
        body = {"RequestType": request_type, "Authentication": auth}
        body.update(extra)
        return body

    # ---------- mock responses (spec-shaped minimal) ----------

    _MOCK_ROOMS = [{"RoomType": "Superior DLX", "RoomTypeName": "SDLX",
                    "RatePlan": "EP"}]

    # Phase-2 samples: parser/poll/accept tests ke liye realistic payloads
    # (confirmed + cancelled + modified + missing-field edge). Field names
    # eZee docs-shaped; live provisioning par adjust honge (plan §5 Phase-5).
    _MOCK_BOOKINGS = [
        {"BookingId": "EZ-1001", "Status": "Confirmed",
         "RoomType": "Superior DLX", "RatePlan": "EP",
         "GuestName": "RAMESH KUMAR", "GuestEmail": "ramesh@x.com",
         "GuestPhone": "+91-9876543210",
         "CheckIn": "2026-10-01", "CheckOut": "2026-10-03",
         "Adults": 2, "Children": 0,
         "TotalAmount": 3600.0, "Commission": 180.0},
        {"BookingId": "EZ-1002", "Status": "Cancelled",
         "RoomType": "Superior DLX", "RatePlan": "EP",
         "GuestName": "SITA DEVI", "GuestEmail": "",
         "GuestPhone": "+91-9123456780",
         "CheckIn": "2026-10-05", "CheckOut": "2026-10-06",
         "Adults": 1, "Children": 0,
         "TotalAmount": 1800.0, "Commission": 90.0},
        {"BookingId": "EZ-1003", "Status": "Modified",
         "RoomType": "Superior DLX", "RatePlan": "EP",
         "GuestName": "AHMED ALI", "GuestEmail": "ahmed@y.com",
         "GuestPhone": "",
         "CheckIn": "2026-10-10", "CheckOut": "2026-10-12",
         "Adults": 2, "Children": 1,
         "TotalAmount": 5400.0, "Commission": 270.0},
        {"BookingId": "EZ-1004", "Status": "Confirmed",
         "RoomType": "Superior DLX", "RatePlan": "EP",
         "GuestName": "", "GuestEmail": "", "GuestPhone": "",
         "CheckIn": "", "CheckOut": "2026-10-20",
         "Adults": None, "Children": None,
         "TotalAmount": None, "Commission": None},
    ]

    def _mock_response(self, request_type: str, body: dict) -> dict:
        if request_type == "FetchBookings":
            return {"success": True, "mock": True,
                    "Bookings": self._MOCK_BOOKINGS}
        if request_type == "FetchBooking":
            return {"success": True, "mock": True, "Booking": {}}
        if request_type == "FetchRoomInformation":
            return {"success": True, "mock": True,
                    "RoomInformation": self._MOCK_ROOMS}
        if request_type in ("UpdateRoomInventory", "SetRoomRate",
                            "UpdateMinStay", "UpdateStopSell",
                            "BookingRecieve"):
            return {"success": True, "mock": True,
                    "echo": body.get("RequestType")}
        return {"success": True, "mock": True}

    # ---------- public ops (spec RequestTypes) ----------

    def fetch_bookings(self, since: str | None = None) -> dict:
        """New/modified/cancelled OTA bookings. `since` = ISO date/datetime."""
        extra = {}
        if since:
            extra["StartDate"] = since
        return self._request("FetchBookings", extra)

    def fetch_room_information(self) -> dict:
        return self._request("FetchRoomInformation", {})

    def update_room_inventory(self, room_type: str, date_iso: str,
                              rooms: int) -> dict:
        if int(rooms) < 0:
            raise ValueError("rooms negative nahi ho sakta")
        return self._request("UpdateRoomInventory", {
            "RoomType": room_type, "Date": date_iso, "Inventory": int(rooms)})

    def set_room_rate(self, room_type: str, rate_plan: str, date_iso: str,
                      rate: float) -> dict:
        if float(rate) < 0:
            raise ValueError("rate negative nahi ho sakta")
        return self._request("SetRoomRate", {
            "RoomType": room_type, "RatePlan": rate_plan,
            "Date": date_iso, "Rate": float(rate)})

    def update_stop_sell(self, room_type: str, date_iso: str,
                         stop_sell: bool) -> dict:
        return self._request("UpdateStopSell", {
            "RoomType": room_type, "Date": date_iso,
            "StopSell": bool(stop_sell)})

    def update_min_stay(self, room_type: str, date_iso: str,
                        min_nights: int) -> dict:
        if int(min_nights) < 0:
            raise ValueError("min_nights negative nahi ho sakta")
        return self._request("UpdateMinStay", {
            "RoomType": room_type, "Date": date_iso,
            "MinNights": int(min_nights)})

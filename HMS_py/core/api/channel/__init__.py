"""Channel Manager (eZee Centrix / YCS) integration package — Phase 1.

Design doc: docs/CHANNEL_MANAGER_INTEGRATION_PLAN.md (review-fixes included:
RoomCat (not RoomCatMast), unique indexes, poll cursor, NVARCHAR(21)
BookingDocId, PayloadHash, 90-day sync-log retention).

Modules:
- config:   ChannelEnviro 1-row config (DPAPI-first secret storage)
- roommap:  RoomCat <-> eZee room-type mapping (FK + unique guards)
- synclog:  API call audit (payload hash + retention)
- client:   EzeeClient — mock-first (MockYN='Y' => no network), live path
            behind EnabledYN='N' + creds present

Security note (plan §6): AuthCode DPAPI-first (win32crypt
CryptProtectData), XOR fallback; obfuscation = casual-read guard only.
"""
from HMS_py.core.channel.ensure import ensure_tables  # noqa: F401

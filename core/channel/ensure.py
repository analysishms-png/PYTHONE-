"""Idempotent DDL for the 4 channel tables (plan §3, review fixes included).

Run once at integration setup; safe to call repeatedly (IF NOT EXISTS).
Follows audit column conventions of the project (U_Name/U_EntDt/U_AE/
LogSite_Code), SITE_CODE-driven.

Review fixes baked in:
- ChannelEnviro: unique (Provider, LogSite_Code) + poll cursor cols
- ChannelRoomMap: unique (Provider, LogSite_Code, RoomCat, EzeeRoomType)
- ChannelSyncLog: PayloadHash CHAR(32)
- ChannelBookingIn: BookingDocId NVARCHAR(21) + index

Phase-3 add: ChannelEnviro.AutoPushYN + PushWindowDays (idempotent ALTER
— existing deployments ke liye bhi).
"""
from __future__ import annotations

from HMS_py.core import db

_DDL = [
    # 1-row config (unique Provider+LogSite enforced)
    """IF OBJECT_ID('dbo.ChannelEnviro') IS NULL CREATE TABLE dbo.ChannelEnviro (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) NOT NULL DEFAULT 'EZEE',
    HotelCode VARCHAR(20) NULL,
    AuthCode VARBINARY(400) NULL,             -- DPAPI/XOR blob (never plaintext)
    BaseURL VARCHAR(100) NOT NULL DEFAULT 'https://live.ipms247.com',
    PollIntervalMin INT NOT NULL DEFAULT 15,
    EnabledYN CHAR(1) NOT NULL DEFAULT 'N',
    MockYN CHAR(1) NOT NULL DEFAULT 'Y',
    UserAgent VARCHAR(100) NULL,
    LastBookingPollDt DATETIME NULL,          -- poll cursor (review fix)
    LastChangeId VARCHAR(40) NULL,            -- eZee change-id cursor
    AutoPushYN CHAR(1) NOT NULL DEFAULT 'N',  -- Phase-3: NA ke baad push
    PushWindowDays INT NOT NULL DEFAULT 30,   -- Phase-3: inventory window
    Site_Code VARCHAR(2) NULL, U_Name VARCHAR(10) NULL, U_EntDt DATETIME NULL,
    U_AE CHAR(1) NULL, LogSite_Code VARCHAR(2) NULL
)""",
    """IF NOT EXISTS (SELECT 1 FROM sys.indexes
    WHERE name = 'UX_ChannelEnviro' AND object_id = OBJECT_ID('dbo.ChannelEnviro'))
CREATE UNIQUE INDEX UX_ChannelEnviro ON dbo.ChannelEnviro (Provider, LogSite_Code)""",
    # room-type mapping (live table = RoomCat, review fix)
    """IF OBJECT_ID('dbo.ChannelRoomMap') IS NULL CREATE TABLE dbo.ChannelRoomMap (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) NOT NULL DEFAULT 'EZEE',
    RoomCat VARCHAR(6) NOT NULL,              -- FK RoomCat.Code (live name)
    EzeeRoomType VARCHAR(50) NOT NULL,
    RatePlan VARCHAR(50) NULL,
    ActiveYN CHAR(1) NOT NULL DEFAULT 'Y',
    Site_Code VARCHAR(2) NULL, U_Name VARCHAR(10) NULL, U_EntDt DATETIME NULL,
    U_AE CHAR(1) NULL, LogSite_Code VARCHAR(2) NULL
)""",
    """IF NOT EXISTS (SELECT 1 FROM sys.indexes
    WHERE name = 'UX_ChannelRoomMap' AND object_id = OBJECT_ID('dbo.ChannelRoomMap'))
CREATE UNIQUE INDEX UX_ChannelRoomMap
    ON dbo.ChannelRoomMap (Provider, LogSite_Code, RoomCat, EzeeRoomType)""",
    # API call audit
    """IF OBJECT_ID('dbo.ChannelSyncLog') IS NULL CREATE TABLE dbo.ChannelSyncLog (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) NULL,
    Direction CHAR(3) NULL,                   -- OUT/IN
    RequestType VARCHAR(40) NULL,
    ReqPayload NVARCHAR(MAX) NULL,
    RespPayload NVARCHAR(MAX) NULL,
    Status CHAR(1) NULL,                      -- S/F
    ErrMsg NVARCHAR(500) NULL,
    Retries INT NOT NULL DEFAULT 0,
    PayloadHash CHAR(32) NULL,                -- md5 hex (review fix)
    Site_Code VARCHAR(2) NULL, U_Name VARCHAR(10) NULL, U_EntDt DATETIME NULL,
    LogSite_Code VARCHAR(2) NULL
)""",
    """IF NOT EXISTS (SELECT 1 FROM sys.indexes
    WHERE name = 'IX_ChannelSyncLog_EntDt' AND object_id = OBJECT_ID('dbo.ChannelSyncLog'))
CREATE INDEX IX_ChannelSyncLog_EntDt ON dbo.ChannelSyncLog (U_EntDt)""",
    # incoming OTA booking queue
    """IF OBJECT_ID('dbo.ChannelBookingIn') IS NULL CREATE TABLE dbo.ChannelBookingIn (
    Id INT IDENTITY PRIMARY KEY,
    Provider VARCHAR(20) NULL,
    EzeeBookingId VARCHAR(40) NOT NULL,
    RoomType VARCHAR(50) NULL, RatePlan VARCHAR(50) NULL,
    GuestName VARCHAR(100) NULL, GuestEmail VARCHAR(100) NULL,
    GuestPhone VARCHAR(30) NULL,
    ArrDate DATETIME NULL, DepDate DATETIME NULL,
    Adults INT NULL, Children INT NULL,
    Amount DECIMAL(12, 2) NULL, Commission DECIMAL(12, 2) NULL,
    RawJson NVARCHAR(MAX) NULL,
    ProcessedYN CHAR(1) NOT NULL DEFAULT 'N',
    BookingDocId NVARCHAR(21) NULL,           -- live Booking.DocId type (review fix)
    Site_Code VARCHAR(2) NULL, U_EntDt DATETIME NULL, LogSite_Code VARCHAR(2) NULL
)""",
    """IF NOT EXISTS (SELECT 1 FROM sys.indexes
    WHERE name = 'UX_ChannelBookingIn' AND object_id = OBJECT_ID('dbo.ChannelBookingIn'))
CREATE UNIQUE INDEX UX_ChannelBookingIn ON dbo.ChannelBookingIn (EzeeBookingId)""",
    """IF NOT EXISTS (SELECT 1 FROM sys.indexes
    WHERE name = 'IX_ChannelBookingIn_BookingDocId' AND object_id = OBJECT_ID('dbo.ChannelBookingIn'))
CREATE INDEX IX_ChannelBookingIn_BookingDocId ON dbo.ChannelBookingIn (BookingDocId)""",
    # Phase-3: existing ChannelEnviro deployments ke liye column adds
    """IF NOT EXISTS (SELECT 1 FROM sys.columns c
    JOIN sys.tables t ON t.object_id = c.object_id
    WHERE t.name = 'ChannelEnviro' AND c.name = 'AutoPushYN')
ALTER TABLE dbo.ChannelEnviro ADD AutoPushYN CHAR(1) NOT NULL DEFAULT 'N'""",
    """IF NOT EXISTS (SELECT 1 FROM sys.columns c
    JOIN sys.tables t ON t.object_id = c.object_id
    WHERE t.name = 'ChannelEnviro' AND c.name = 'PushWindowDays')
ALTER TABLE dbo.ChannelEnviro ADD PushWindowDays INT NOT NULL DEFAULT 30""",
]


def ensure_tables(cn=None, commit: bool = True) -> list[str]:
    """Create missing channel tables/indexes. Returns list of created items."""
    own = cn is None
    if own:
        cn = db.connect()
    created: list[str] = []
    try:
        cur = cn.cursor()
        for ddl in _DDL:
            cur.execute(ddl)
            # object name extract for reporting (ALTERs -> labelled skip)
            if "ADD AutoPushYN" in ddl:
                created.append("ALTER:AutoPushYN")
                continue
            if "ADD PushWindowDays" in ddl:
                created.append("ALTER:PushWindowDays")
                continue
            token = "CREATE TABLE dbo." if "CREATE TABLE dbo." in ddl \
                else "CREATE UNIQUE INDEX " if "CREATE UNIQUE INDEX" in ddl \
                else "CREATE INDEX "
            name = ddl.split(token, 1)[1].split(" ", 1)[0].split("(", 1)[0]
            created.append(name)
        if commit:
            cn.commit()
        return created
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()

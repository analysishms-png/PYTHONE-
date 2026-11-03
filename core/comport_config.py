"""Com Port Properties config (VB6: Main Setup -> EPABX -> Com Port Properties).

VB6 evidence:
- Menu census (_qa/HMS_exe_20260924/user_module_tree.txt:130):
  `130|TelMaast|Com Port Properties|1|EPABX` — real EXE me leaf tha.
- Decompiled source me MSComm form fields nahi mile (EXTRAS.text me koi
  MSComm/CommPort/DTREnable hit nahi) — isliye canonical VB6 MSComm
  settings quadruple port kiya gaya hai: `port,baud,parity,data,stop`
  ("9600,n,8,1" classic default, VB6 MSComm1.Settings format).

Design (skill gotcha: VB6 form table-less tha):
- Persistence Analysis.ini [HMS] me (machine-local, VB6 INI-pattern;
  core/db.py load_config/save_config jaisa hi configparser use;
  db ke private path helpers single-source-of-truth ke liye reuse kiye).
- Serial device live hai to door_lock.py pyserial pattern se actual
  COM port probe (pyserial list_ports) + Settings-string validate.
- pyserial absent ho to bhi config save/load kaam kare (simulate mode,
  door_lock.HAS_SERIAL convention).
"""
from __future__ import annotations

import configparser
import os

try:
    from serial.tools import list_ports
    HAS_LIST_PORTS = True
except ImportError:
    HAS_LIST_PORTS = False

try:
    import serial  # door_lock.py pattern — module-level availability flag
    HAS_SERIAL = True
except ImportError:
    HAS_SERIAL = False

from HMS_py.core import db

# VB6 MSComm Settings format: "<baud>,<parity>,<data>,<stop>"
DEFAULT_SETTINGS = "9600,n,8,1"

BAUD_RATES = (110, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200,
              38400, 57600, 115200)
PARITIES = ("n", "o", "e", "m", "s")   # VB6 MSComm: N/O/E/M/S
DATA_BITS = (5, 6, 7, 8)
STOP_BITS = (1, 1.5, 2)

_SECTION = "HMS"
_KEY_PORT = "ComPort"
_KEY_SETTINGS = "ComPortSettings"


# ============================================================
# Settings-string validation (VB6 MSComm1.Settings semantics)
# ============================================================

def validate_settings(settings: str) -> str:
    """'9600,n,8,1' quadruple validate karo; error message ke saath raise.

    Returns canonical lowercase-parity string.
    """
    if not settings or not settings.strip():
        raise ValueError("Settings zaroori hai (jaise 9600,n,8,1)")
    parts = [p.strip() for p in settings.split(",")]
    if len(parts) != 4:
        raise ValueError(
            "Settings format: baud,parity,data,stop (jaise 9600,n,8,1)")
    baud_s, parity_s, data_s, stop_s = parts
    try:
        baud = int(baud_s)
    except ValueError:
        raise ValueError(f"Baud numeric hona chahiye: {baud_s!r}")
    if baud not in BAUD_RATES:
        raise ValueError(
            f"Baud {baud} standard nahi — allowed: {', '.join(map(str, BAUD_RATES))}")
    parity = parity_s.lower()
    if parity not in PARITIES:
        raise ValueError(
            f"Parity {parity_s!r} invalid — allowed: N/O/E/M/S")
    try:
        data = int(data_s)
    except ValueError:
        raise ValueError(f"Data bits numeric hone chahiye: {data_s!r}")
    if data not in DATA_BITS:
        raise ValueError(f"Data bits {data} invalid — allowed: 5/6/7/8")
    try:
        stop = float(stop_s)
    except ValueError:
        raise ValueError(f"Stop bits numeric hone chahiye: {stop_s!r}")
    if stop not in STOP_BITS:
        raise ValueError(f"Stop bits {stop} invalid — allowed: 1/1.5/2")
    return f"{baud},{parity},{data},{_format_stop(stop)}"


def _format_stop(stop: float) -> str:
    """1.0 -> '1', 1.5 -> '1.5', 2.0 -> '2' (VB6 Settings-string style)."""
    return str(int(stop)) if float(stop).is_integer() else str(stop)


# ============================================================
# COM port discovery (door_lock.py pyserial pattern)
# ============================================================

def list_com_ports() -> list[dict]:
    """pyserial list_ports -> [{device, description, hwid}] (live ports).

    pyserial absent ho to common VB6-era defaults return karo (simulate).
    """
    if HAS_LIST_PORTS:
        return [{"device": p.device,
                 "description": (p.description or "").strip(),
                 "hwid": p.hwid or ""}
                for p in list_ports.comports()]
    return [{"device": f"COM{i}", "description": "(simulated — pyserial absent)",
             "hwid": ""} for i in range(1, 5)]


def probe_port(device: str, settings: str) -> dict:
    """Port ko Settings-string se kholne ki koshish (door_lock pattern).

    Returns {ok, message}. Settings validation pehle hoti hai (simulate
    mode me bhi), phir pyserial absent => simulate ok=True. Actual open
    2s timeout pe; turant close (VB6 form bhi sirf settings save karta tha).
    """
    try:
        canonical = validate_settings(settings)
    except ValueError as e:
        return {"ok": False, "message": str(e)}
    if not HAS_SERIAL:
        return {"ok": True,
                "message": f"{device} simulate-ok (pyserial absent, settings saved)"}
    baud_s, parity, data_s, stop_s = canonical.split(",")
    parity_map = {"n": serial.PARITY_NONE, "o": serial.PARITY_ODD,
                  "e": serial.PARITY_EVEN, "m": serial.PARITY_MARK,
                  "s": serial.PARITY_SPACE}
    stop_map = {"1": serial.STOPBITS_ONE, "1.5": serial.STOPBITS_ONE_POINT_FIVE,
                "2": serial.STOPBITS_TWO}
    try:
        cn = serial.Serial(port=device, baudrate=int(baud_s),
                           parity=parity_map[parity], bytesize=int(data_s),
                           stopbits=stop_map[stop_s], timeout=2)
        cn.close()
        return {"ok": True, "message": f"{device} opened+closed OK ({canonical})"}
    except Exception as e:  # SerialException / PermissionError / OSError
        return {"ok": False, "message": f"{device}: {e}"}


# ============================================================
# Persistence (Analysis.ini [HMS] — db.py INI conventions)
# ============================================================

def _ini_path() -> str:
    return db.find_analysis_ini() or db._project_ini_path()


def get_config(ini_path: str | None = None) -> dict:
    """Saved Com Port config -> {port, settings, has_serial}.

    Missing keys pe VB6 defaults: COM1 + '9600,n,8,1'.
    """
    path = ini_path or _ini_path()
    cp = configparser.ConfigParser()
    cp.optionxform = str  # ComPort/ComPortSettings camelCase preserve karo
    read = cp.read(path, encoding="latin-1")
    port = settings = None
    if read and cp.has_section(_SECTION):
        port = cp[_SECTION].get(_KEY_PORT, "").strip() or None
        settings = cp[_SECTION].get(_KEY_SETTINGS, "").strip() or None
    return {"port": port or "COM1",
            "settings": settings or DEFAULT_SETTINGS,
            "has_serial": HAS_LIST_PORTS}


def save_config(port: str, settings: str,
                ini_path: str | None = None) -> dict:
    """Validate karke Analysis.ini [HMS] me save karo (db.save_config style).

    Returns {path, port, settings}. Invalid settings pe ValueError.
    """
    canonical = validate_settings(settings)
    if not port or not str(port).strip():
        raise ValueError("Port zaroori hai (jaise COM1)")
    port = str(port).strip()
    path = ini_path or _ini_path()
    cp = configparser.ConfigParser()
    cp.optionxform = str  # db.load_config numeric keys unaffected; case preserve
    cp.read(path, encoding="latin-1")
    if not cp.has_section(_SECTION):
        cp.add_section(_SECTION)
    cp.set(_SECTION, _KEY_PORT, port)
    cp.set(_SECTION, _KEY_SETTINGS, canonical)
    with open(path, "w", encoding="latin-1") as f:
        cp.write(f)
    return {"path": path, "port": port, "settings": canonical}


def reset_to_default(ini_path: str | None = None) -> dict:
    """VB6 MSComm defaults pe reset (COM1, 9600,n,8,1) aur save."""
    return save_config("COM1", DEFAULT_SETTINGS, ini_path)

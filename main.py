"""HMS_py main entry point (P0 flow).

Run: python -m HMS_py.main
EXE: pyinstaller build/HMS_py.spec  ->  build/dist/HMS_py.exe

Flow (VB6 jaisa): Login ('User Information') ->
Company select ('Company Details', Site table se dynamic) ->
Main window ('{Company} { Year }', sidebar ini key 9,
menubar User_Module se, ported masters registry se).
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from HMS_py.ui.shell import run_flow


def configure_qt_headless() -> None:
    """Use Qt offscreen mode ONLY when there really is no display.

    Windows desktop hamesha display rakhta hai, isliye wahan default GUI
    hai. Offscreen sirf tab jab:
      - QT_QPA_PLATFORM already set ho (caller ne khud chuna),
      - HMS_FORCE_HEADLESS=1 ho (CI / tests),
      - ya WSL/CI ho bina DISPLAY/WAYLAND_DISPLAY ke.

    Pehle logic ulta tha (Windows par offscreen default) — usse app chalti
    thi par koi window nahi dikhti thi, isliye "run nahi ho raha" lagta tha.
    """
    if os.environ.get("QT_QPA_PLATFORM"):
        return
    if os.environ.get("HMS_FORCE_HEADLESS") == "1":
        os.environ["QT_QPA_PLATFORM"] = "offscreen"
        print("[HMS] headless mode (HMS_FORCE_HEADLESS=1) — koi window nahi khulegi.")
        return
    if os.environ.get("DISPLAY") or os.environ.get("WAYLAND_DISPLAY"):
        return
    # Native Windows desktop session -> GUI (default, no env var needed).
    if os.name == "nt" and not os.environ.get("WSL_DISTRO_NAME"):
        return
    # Baaki (WSL/CI without display) -> offscreen, par batao taaki silence na ho.
    os.environ["QT_QPA_PLATFORM"] = "offscreen"
    print("[HMS] No display detected — offscreen mode. GUI ke liye "
          "HMS_FORCE_HEADLESS=0 set karein.")


def main() -> int:
    configure_qt_headless()
    # Analysis.ini keys 2/3: reports/temp folders must exist (VB6 ke jaise
    # report export + Temp.Mdb wahan rehte hain). Best-effort, non-fatal.
    try:
        from HMS_py.core import db as _db
        _db.ensure_paths()
    except Exception:
        pass
    return run_flow()


if __name__ == "__main__":
    raise SystemExit(main())

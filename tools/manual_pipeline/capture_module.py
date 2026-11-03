"""LIVE desktop screenshot capture (PyQt6 real windows, no offscreen).

Flow: login -> company -> MainWindow -> sidebar module -> open each leaf
(modal .exec() safe via watchdog QTimer) -> grab -> validate -> manifest.

Usage (on the desktop session, NOT over ssh/headless):
  python -m HMS_py.tools.manual_pipeline.capture_module --module 04_FrontOffice
"""
from __future__ import annotations
import argparse
import datetime as dt
import json
import os
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[2]   # png\HMS_py
sys.path.insert(0, str(ROOT.parent))                 # png

DEFAULT_USER, DEFAULT_PASS = "ADITYA", "112233"   # verified 2026-09-25
LEAF_WAIT_MS = 900


def _assert_live_gui() -> None:
    if (os.environ.get("QT_QPA_PLATFORM") == "offscreen"
            or os.environ.get("HMS_FORCE_HEADLESS") == "1"
            or (not os.environ.get("DISPLAY") and os.name != "nt")):
        raise SystemExit(
            "capture_module needs a LIVE desktop session — unset "
            "QT_QPA_PLATFORM / HMS_FORCE_HEADLESS and run on the desktop.")


def validate_image(path: pathlib.Path, min_bytes: int = 5000,
                   min_unique_colors: int = 64) -> bool:
    """Blank/107-byte screenshots ko reject karo (Review Focus #5)."""
    from PIL import Image
    p = pathlib.Path(path)
    if not p.exists() or p.stat().st_size < min_bytes:
        return False
    try:
        im = Image.open(p).convert("RGB")
    except Exception:
        return False
    colors = im.getcolors(maxcolors=2_000_000)
    if colors is None:            # >2M unique colors = definitely not blank
        return True
    return len(colors) >= min_unique_colors


def _pick_target(app, win):
    from PyQt6.QtWidgets import QDialog, QMessageBox, QWidget
    best = None
    for w in app.topLevelWidgets():
        if not w.isVisible() or w is win:
            continue
        if isinstance(w, QMessageBox):
            return w          # message box hi top-most issue hai
        if isinstance(w, (QDialog, QWidget)):
            best = w
    return best


def _grab(widget, out_path: pathlib.Path) -> bool:
    pix = widget.grab()               # live rendering (real window)
    pix.save(str(out_path))
    if validate_image(out_path):
        return True
    # fallback: screen grab of window id (true screen capture)
    try:
        from PyQt6.QtGui import QGuiApplication
        screen = QGuiApplication.primaryScreen()
        wid = int(widget.winId())
        got = screen.grabWindow(wid)
        if not got.isNull():
            got.save(str(out_path))
            return validate_image(out_path)
    except Exception:
        pass
    return False


def _close_toplevels(app, win) -> None:
    from PyQt6.QtWidgets import QMessageBox
    for w in list(app.topLevelWidgets()):
        if w is win or not w.isVisible():
            continue
        try:
            if isinstance(w, QMessageBox):
                w.reject()
            else:
                w.close()
                w.reject() if hasattr(w, "reject") else None
        except Exception:
            pass


def capture_leaf(win, app, leaf: str, out_path: pathlib.Path) -> str:
    """Open registry leaf; modal (exec) + non-modal + hidden-return dono.

    fd_forms_ui ke openers window construct karke .show() nahi karte
    (app-side pre-existing gap) — wo widget wapas milta hai, rescue
    me show+grab kar lete hain.
    """
    from PyQt6.QtCore import QTimer
    from PyQt6.QtTest import QTest
    from PyQt6.QtWidgets import QMessageBox, QWidget

    if leaf.strip().lower() not in win._reg_ci:
        return "missing"
    state = {"status": "failed"}

    def _fire():
        target = _pick_target(app, win)
        if target is None:
            return
        if isinstance(target, QMessageBox):
            state["status"] = "skipped_messagebox"
        elif _grab(target, out_path):
            state["status"] = "ok"
        _close_toplevels(app, win)

    watchdog = QTimer()
    watchdog.setSingleShot(True)
    watchdog.timeout.connect(_fire)
    watchdog.start(LEAF_WAIT_MS)

    fn = win._reg_ci.get(leaf.strip().lower()) or win.registry.get(leaf)
    try:
        res = fn(win) if fn else None      # modal leaf yahan block hota hai
    except Exception as exc:               # opener crash = leaf fail, module na maar
        print(f"[capture] {leaf}: opener raised {exc!r}", flush=True)
        res = None

    # Rescue: opener ne hidden widget return kiya (no-show pattern)
    if (state["status"] == "failed" and isinstance(res, QWidget)
            and not res.isVisible()):
        res.show()
        QTest.qWait(600)
        if _grab(res, out_path):
            state["status"] = "ok"

    if state["status"] == "failed":
        QTest.qWait(LEAF_WAIT_MS + 500)
        if state["status"] == "failed":
            _fire()
    watchdog.stop()
    _close_toplevels(app, win)
    QTest.qWait(150)
    return state["status"]


def capture_module(module_key: str, out_dir: pathlib.Path,
                   username: str = DEFAULT_USER,
                   password: str = DEFAULT_PASS) -> dict:
    _assert_live_gui()
    os.environ["HMS_GUI"] = "1"
    os.environ.pop("QT_QPA_PLATFORM", None)

    from PyQt6.QtWidgets import QApplication, QDialog
    from PyQt6.QtTest import QTest
    from HMS_py.core import auth
    from HMS_py.ui import shell
    from HMS_py.tools.manual_pipeline.modules_map import get

    ok, msg = auth.check_login(username, password)   # EK hi attempt (lockout!)
    if not ok:
        raise SystemExit(f"login preflight failed: {msg}")
    print(f"[capture] login preflight ok ({username})", flush=True)

    mod = get(module_key)
    out_dir = pathlib.Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    app = QApplication.instance() or QApplication([])
    shell.apply_theme(app)

    login = shell.LoginDialog()
    login.show()
    login.txtUser.setText(username)
    login.txtPass.setText(password)
    login.btnLogin.click()
    QTest.qWait(800)
    if login.isVisible():
        raise SystemExit(f"login dialog rejected: {login.lblMsg.text()}")

    comp = shell.CompanyDialog(username)
    comp.show()
    QTest.qWait(700)
    comp.tbl.selectRow(0)
    comp._do_login()
    QTest.qWait(400)
    if comp.isVisible() or not comp.selected:
        raise SystemExit("company select failed")

    win = shell.MainWindow(username, comp.selected)
    win.show()
    QTest.qWait(1800)
    print("[capture] main window up", flush=True)

    # sidebar module navigation
    btn = next((b for b in win._side_buttons
                if (b.property("mod_target") or "").strip().lower()
                == mod.sidebar), None)
    if btn is None:
        raise SystemExit(f"sidebar target {mod.sidebar!r} not found")
    win._on_sidebar_click(mod.sidebar, btn)
    QTest.qWait(1200)
    _grab(win, out_dir / "00_shell_module.png")
    print(f"[capture] sidebar {mod.sidebar!r} ok", flush=True)

    items, failed = [], []
    idx = 10
    for layer in ("masters", "operations", "reports"):
        for leaf in mod.leaves.get(layer, []):
            fname = f"{idx:02d}_{layer}_{leaf.replace('/', '-').replace(' ', '_')}.png"
            status = capture_leaf(win, app, leaf, out_dir / fname)
            print(f"[capture] {layer}/{leaf}: {status}", flush=True)
            items.append({"leaf": leaf, "layer": layer,
                          "file": fname, "status": status})
            if status not in ("ok", "skipped_messagebox"):
                failed.append(leaf)
            idx += 10

    manifest = {
        "module": module_key,
        "generated_at": dt.datetime.now().isoformat(timespec="seconds"),
        "sidebar": mod.sidebar,
        "items": items,
        "failed": failed,
        "shell": "00_shell_module.png",
    }
    (out_dir / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False), encoding="utf-8")
    win.close()
    return manifest


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--module", required=True)
    ap.add_argument("--out", default=None)
    ap.add_argument("--username", default=DEFAULT_USER)
    ap.add_argument("--password", default=DEFAULT_PASS)
    a = ap.parse_args(argv)
    out = pathlib.Path(a.out) if a.out else (
        ROOT / "MODULE_MANUALS_2026" / a.module / "screenshots")
    m = capture_module(a.module, out, a.username, a.password)
    print(f"captured {len(m['items'])} leaves, failed={m['failed']}")
    return 1 if m["failed"] else 0


if __name__ == "__main__":
    raise SystemExit(main())

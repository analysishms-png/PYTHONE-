"""Manual pipeline unit tests (no DB, no GUI)."""
import pathlib
import sys

sys.path.insert(0, str(pathlib.Path(__file__).resolve().parents[2]))

from HMS_py.tools.manual_pipeline import modules_map as mm


def test_fourteen_modules_stable_numbering():
    assert [m.no for m in mm.MODULES] == list(range(1, 15))


def test_front_office_entry_complete():
    fo = mm.get("04_FrontOffice")
    assert fo.no == 4
    assert fo.sidebar == "front office"
    assert "FDOForms" in fo.module_names
    assert "FDORep" in fo.module_names
    assert "checkin" in fo.core_files
    assert "Check In" in fo.leaves["operations"]
    assert "Room Status" in fo.leaves["reports"]
    assert "Guest Profile" in fo.leaves["masters"]


def test_get_by_key_and_number():
    assert mm.get(4).key == "04_FrontOffice"
    assert mm.get("07_POS").no == 7


def test_every_module_has_sidebar_and_layers():
    for m in mm.MODULES:
        assert m.sidebar, m.key
        assert set(m.leaves) == {"masters", "operations", "reports"}, m.key
        assert m.core_files, m.key


def _row(caption, flag="E", module="FDOForms", opt1="1", opt2="2", opt3="0", opt4="0", param="AEDP"):
    return {"caption": caption.lower(), "caption_disp": caption, "flag": flag,
            "param": param, "module": module, "opt1": opt1, "opt2": opt2,
            "opt3": opt3, "opt4": opt4, "code": 0}


def test_classify_layers():
    from HMS_py.tools.manual_pipeline.collect_logic import classify
    fo = mm.get("04_FrontOffice")
    rows = [
        _row("Guest Profile"),              # curated master -> masters
        _row("Walk In Check In"),           # E, not master -> operations
        _row("Instant House Count", flag="R"),  # -> reports
        _row("Deleted Leaf", flag="V"),     # -> hidden
        _row("Some Unknown Leaf"),          # -> other (not dropped)
    ]
    out = classify(rows, fo)
    assert [r["caption_disp"] for r in out["masters"]] == ["Guest Profile"]
    assert [r["caption_disp"] for r in out["operations"]] == ["Walk In Check In"]
    assert [r["caption_disp"] for r in out["reports"]] == ["Instant House Count"]
    assert [r["caption_disp"] for r in out["hidden"]] == ["Deleted Leaf"]
    assert [r["caption_disp"] for r in out["other"]] == ["Some Unknown Leaf"]


def test_classify_norm_collision_exact_precedence():
    """KI-10: _norm_caption trailing-paren strip se SMS family sab 'sms'
    ban jaati thi -> curated masters leaf ne operations bucket swallow
    kiya tha. Fix: paren-preserving exact match (pehle) + paren leaf ka
    stripped norm legacy caps se exclude."""
    from HMS_py.core.menu_help import _norm_caption
    from HMS_py.tools.manual_pipeline.collect_logic import classify
    msg = mm.get("12_Messaging")

    def _prow(caption, module, flag="E"):
        return {"caption": _norm_caption(caption), "caption_disp": caption,
                "flag": flag, "param": "AEDP", "module": module,
                "opt1": "1", "opt2": "2", "opt3": "0", "opt4": "0", "code": 0}

    rows = [
        _prow("SMS (API)", "EXTSMSSETUP"),       # exact curated master
        _prow("SMS (Scheduled)", "EXTSMSOPR"),   # exact curated operation
        _prow("SMS (Conditional)", "EXTSMSOPR"),  # not curated -> other
        _prow("SMS", "EXTSMS"),                  # node, not curated -> other
        _prow("Sstup", "SMSSETUP"),              # master_modules rule -> masters
        _prow("Operations", "SMSOPR"),           # node -> other
    ]
    out = classify(rows, msg)
    assert [r["caption_disp"] for r in out["masters"]] == ["SMS (API)", "Sstup"]
    assert [r["caption_disp"] for r in out["operations"]] == ["SMS (Scheduled)"]
    assert [r["caption_disp"] for r in out["other"]] == [
        "SMS (Conditional)", "SMS", "Operations"]

    # drift-guard: _xnorm = _norm_caption ki cleanup steps + paren-preserving.
    # Agar menu_help._norm_caption ka cleanup (suffix/space rules) badle to ye fail hoga.
    from HMS_py.tools.manual_pipeline.collect_logic import _xnorm
    for plain in ("Guest Profile", "Walk In Check In", "- HMS_py Sales"):
        assert _xnorm(plain) == _norm_caption(plain), plain
    assert _xnorm("SMS (API)") == "sms (api)"
    assert _norm_caption("SMS (API)") == "sms"  # trailing-paren strip = KI-10 root


def test_collect_payload_shape():
    from HMS_py.tools.manual_pipeline import collect_logic
    fo = mm.get("04_FrontOffice")
    rows = [_row("Guest Profile"), _row("Check In"),
            _row("Room Status", flag="R")]
    hits = {"masters": ["Guest Profile"], "operations": ["Check In"],
            "reports": ["Room Status"]}
    payload = collect_logic._build(fo, rows, registry_hits=hits)
    assert payload["module"] == "04_FrontOffice"
    assert payload["menuhelp"]["masters"][0]["caption_disp"] == "Guest Profile"
    assert payload["registry_hits"]["operations"] == ["Check In"]
    assert payload["core_files"] == list(fo.core_files)
    assert "unclassified" in payload["menuhelp"]


def test_cli_writes_json(tmp_path):
    from HMS_py.tools.manual_pipeline import collect_logic
    # DB-free path: _build + write only
    fo = mm.get("04_FrontOffice")
    out = tmp_path / "_logic.json"
    collect_logic.write_json(fo, [], out)
    import json
    data = json.loads(out.read_text(encoding="utf-8"))
    assert data["module"] == "04_FrontOffice"


def test_parse_pytest_summary():
    from HMS_py.tools.manual_pipeline.run_module_tests import parse_pytest_summary
    assert parse_pytest_summary("284 passed in 17.14s") == (284, "passed")
    assert parse_pytest_summary("3 failed, 281 passed in 20.00s") == (3, "failed")
    assert parse_pytest_summary("4 passed in 0.14s") == (4, "passed")
    assert parse_pytest_summary("no tests ran") is None


def test_render_results_has_all_sections():
    from HMS_py.tools.manual_pipeline.run_module_tests import render_results
    records = [
        {"layer": "L1_unit", "cmd": "pytest tests/unit",
         "exit": 0, "summary": "284 passed in 17.14s", "seconds": 17.14},
        {"layer": "L3_ui", "cmd": "pytest ui tests",
         "exit": 1, "summary": "3 failed, 37 passed", "seconds": 9.0},
    ]
    md = render_results("04_FrontOffice", records)
    assert "# TEST_RESULTS — 04_FrontOffice" in md
    assert "L1_unit" in md and "L3_ui" in md
    assert "284 passed" in md
    assert "FAIL" in md          # exit != 0 layer clearly marked
    assert "| Layer |" in md     # summary table


def test_validate_image_rejects_blank_accepts_noise(tmp_path):
    from PIL import Image
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    blank = tmp_path / "blank.png"
    Image.new("RGB", (800, 600), (255, 255, 255)).save(blank)
    assert validate_image(blank) is False
    import random
    noise = tmp_path / "noise.png"
    im = Image.new("RGB", (800, 600))
    im.putdata([(random.randrange(256), random.randrange(256),
                 random.randrange(256)) for _ in range(800 * 600)])
    im.save(noise)
    assert validate_image(noise) is True


def test_validate_image_rejects_tiny(tmp_path):
    from HMS_py.tools.manual_pipeline.capture_module import validate_image
    tiny = tmp_path / "tiny.png"
    tiny.write_bytes(b"\x89PNG\r\n\x1a\n" + b"\x00" * 40)
    assert validate_image(tiny) is False


def test_assert_live_gui_refuses_offscreen(monkeypatch):
    from HMS_py.tools.manual_pipeline import capture_module as cm
    monkeypatch.setenv("QT_QPA_PLATFORM", "offscreen")
    try:
        cm._assert_live_gui()
        raised = False
    except SystemExit:
        raised = True
    assert raised
    monkeypatch.delenv("QT_QPA_PLATFORM", raising=False)
    monkeypatch.setenv("HMS_FORCE_HEADLESS", "1")
    try:
        cm._assert_live_gui()
        raised = False
    except SystemExit:
        raised = True
    assert raised


def test_capture_leaf_rescues_hidden_returned_widget(tmp_path, monkeypatch):
    monkeypatch.setenv("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication, QMainWindow, QLabel
    from PIL import Image
    import random
    from HMS_py.tools.manual_pipeline.capture_module import capture_leaf, validate_image

    app = QApplication.instance() or QApplication([])
    noise = tmp_path / "src.png"
    im = Image.new("RGB", (500, 400))
    im.putdata([(random.randrange(256), random.randrange(256),
                 random.randrange(256)) for _ in range(500 * 400)])
    im.save(noise)

    class FakeWin(QMainWindow):
        registry = {}

        def _reg(self):
            return {"hidden leaf": self._open_hidden}

        def __init__(self):
            super().__init__()
            self._reg_ci = self._reg()

        def _open_hidden(self, w):
            # fd_forms_ui pattern: construct WITHOUT show, parent = main win
            sub = QMainWindow(w)
            lbl = QLabel(sub)
            from PyQt6.QtGui import QPixmap
            lbl.setPixmap(QPixmap(str(noise)))
            sub.resize(520, 420)
            return sub

        def _safe_open(self, leaf):
            fn = self._reg_ci.get(leaf.strip().lower())
            if fn:
                fn(self)

    win = FakeWin()
    out = tmp_path / "shot.png"
    status = capture_leaf(win, app, "hidden leaf", out)
    assert status == "ok", f"rescue failed: status={status} exists={out.exists()}"
    assert validate_image(out)


def test_capture_leaf_opener_exception_returns_failed(tmp_path, monkeypatch):
    monkeypatch.setenv("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication, QMainWindow
    from HMS_py.tools.manual_pipeline.capture_module import capture_leaf

    app = QApplication.instance() or QApplication([])

    class BoomWin(QMainWindow):
        registry = {}

        def __init__(self):
            super().__init__()
            self._reg_ci = {"boom leaf": self._open_boom}

        def _open_boom(self, w):
            raise RuntimeError("opener crash (GIN-style KeyError)")

        def _safe_open(self, leaf):
            fn = self._reg_ci.get(leaf.strip().lower())
            if fn:
                fn(self)

    win = BoomWin()
    status = capture_leaf(win, app, "boom leaf", tmp_path / "boom.png")
    assert status == "failed", f"opener exception must yield failed, got {status}"


def test_check_manual_missing_dir_reports_problems(tmp_path):
    from HMS_py.tools.manual_pipeline.check_manual import check
    problems = check("04_FrontOffice", root=tmp_path)
    assert any("README.md" in p for p in problems)
    assert any("_logic.json" in p for p in problems)

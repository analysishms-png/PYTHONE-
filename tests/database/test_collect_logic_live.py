"""collect_logic against live menuHelp (READ-ONLY)."""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__))))))

from HMS_py.tools.manual_pipeline import collect_logic


def test_front_office_rows_found():
    payload = collect_logic.collect("04_FrontOffice", username="SA")
    counts = payload["menuhelp"]["counts"]
    total = sum(counts.values())
    assert total > 10, f"FO menuHelp rows too few: {counts}"
    assert counts["reports"] > 0, counts


def test_classification_no_drop():
    payload = collect_logic.collect("04_FrontOffice", username="SA")
    c = payload["menuhelp"]["counts"]
    # buckets me rows hain jo classify hue, unclassified alag count hota hai
    assert c["unclassified"] == len(payload["menuhelp"]["unclassified"])
    assert c["masters"] == len(payload["menuhelp"]["masters"])

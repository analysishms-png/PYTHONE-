"""Shared classic desktop styling for Main Setup surfaces."""

from __future__ import annotations


def desktop_qss() -> str:
    return """
    QDialog#mainSetupWorkbench, QDialog#desktopMasterForm,
    QWidget[desktopSurface="true"] {
        background: #d4d0c8;
        color: #000000;
    }
    QLabel {
        color: #000000;
        font-family: Arial, sans-serif;
        font-size: 10pt;
    }
    QLabel#mainSetupTitle {
        color: #000080;
        font-size: 16pt;
        font-weight: bold;
        padding: 4px 8px;
    }
    QLabel#mainSetupUserLabel {
        color: #404040;
        font-size: 9pt;
        padding: 3px 6px;
        border: 1px solid #808080;
        background: #eeeeee;
    }
    QLabel#desktopSectionLabel {
        color: #000080;
        font-size: 10pt;
        font-weight: bold;
        padding: 4px 2px;
        border-bottom: 1px solid #808080;
    }
    QPushButton[desktopAction="true"] {
        background: #ffffc0;
        color: #000000;
        font-family: Arial, sans-serif;
        font-size: 9pt;
        font-weight: bold;
        min-height: 28px;
        padding: 3px 12px;
        border: 2px outset;
        border-color: #ffffff #808080 #808080 #ffffff;
    }
    QPushButton[desktopAction="true"]:hover {
        background: #fffbd0;
    }
    QPushButton[desktopAction="true"]:pressed {
        border-style: inset;
    }
    QPushButton[desktopAction="true"][accent="true"] {
        background: #b8cce8;
    }
    QPushButton[desktopAction="true"][role="danger"] {
        background: #e6b8b7;
    }
    QPushButton[desktopAction="true"]:disabled {
        background: #e0e0e0;
        color: #808080;
        border: 1px solid #a0a0a0;
    }
    QLineEdit, QComboBox, QDateEdit, QSpinBox, QDoubleSpinBox {
        background: #ffffff;
        color: #000000;
        font-family: Arial, sans-serif;
        font-size: 10pt;
        min-height: 28px;
        padding: 2px 6px;
        border: 2px inset;
        border-color: #808080 #ffffff #ffffff #808080;
    }
    QLineEdit:focus, QComboBox:focus, QDateEdit:focus {
        border: 2px solid #000080;
    }
    QGroupBox {
        background: #d4d0c8;
        border: 1px solid #808080;
        margin-top: 10px;
        padding: 10px 8px 8px 8px;
        font-weight: bold;
    }
    QGroupBox::title {
        subcontrol-origin: margin;
        left: 8px;
        padding: 0 5px;
        color: #000080;
    }
    QTableWidget {
        background: #ffffff;
        alternate-background-color: #eeeeee;
        color: #000000;
        gridline-color: #c0c0c0;
        border: 2px inset;
        border-color: #808080 #ffffff #ffffff #808080;
        selection-background-color: #b8cce8;
        selection-color: #000000;
    }
    QHeaderView::section {
        background: #000080;
        color: #ffffff;
        border: 1px solid #606060;
        padding: 4px;
        font-weight: bold;
    }
    QTableCornerButton::section {
        background: #000080;
        border: 1px solid #606060;
    }
    QLabel#desktopStateLabel {
        background: #c0c0c0;
        color: #000000;
        border-top: 1px solid #808080;
        padding: 4px 6px;
        font-family: Arial, sans-serif;
        font-size: 9pt;
    }
    """


def apply_desktop_surface(widget, object_name: str):
    widget.setObjectName(object_name)
    widget.setProperty("desktopSurface", True)
    widget.setStyleSheet(desktop_qss())


def make_vb6_header(text: str):
    """VB6-hybrid child-form chrome: blue gradient header + cream title.

    VB6 child windows ki caption strip ('<Module> > <Group> > <Screen>')
    ka hybrid port — properties theme.py ke VB6 shell QSS se style hote
    hain (vbHeader). Har form me manually QLabel+property na likhna pade.
    """
    from PyQt6.QtCore import Qt
    from PyQt6.QtWidgets import QLabel

    hdr = QLabel(f"  {text}")
    hdr.setProperty("vbHeader", True)
    hdr.setAlignment(Qt.AlignmentFlag.AlignVCenter | Qt.AlignmentFlag.AlignLeft)
    hdr.setFixedHeight(40)
    return hdr


def apply_vb6_child_chrome(dialog, title: str, margin: int = 12):
    """QDialog/QWidget ke box-layout ko VB6 chrome wrap me convert karo.

    Existing QVBoxLayout ko le kar: top pe vbHeader strip + baaki
    content ko vbCard surface me daal deta hai. One-liner migration:

        lay = QVBoxLayout(self)
        ...widgets...
        apply_vb6_child_chrome(self, "Window Title")  # LAST me call

    NOTE: QFormLayout directly dialog pe set ho to unsupported (form
    rows bigadte hain) — waise calls None return karte hain, no-op.
    """
    from PyQt6.QtWidgets import (QFormLayout, QFrame, QVBoxLayout,
                                 QWidget)

    lay = dialog.layout()
    if lay is None or isinstance(lay, QFormLayout) or \
            not hasattr(lay, "addWidget"):
        return None  # unsupported layout — no-op

    # Existing children nikaalo (widgets + nested layouts + spacers)
    items = []
    while lay.count():
        it = lay.takeAt(0)
        if it.widget() is not None:
            items.append(it.widget())
        elif it.layout() is not None:
            items.append(it.layout())
        elif it.spacerItem() is not None:
            items.append(it.spacerItem())

    lay.setContentsMargins(0, 0, 0, 0)
    lay.setSpacing(0)

    hdr = make_vb6_header(title)
    lay.addWidget(hdr)

    body = QFrame()
    body.setProperty("vbCard", True)
    body_lay = QVBoxLayout(body)
    body_lay.setContentsMargins(margin, margin - 2, margin, margin)
    body_lay.setSpacing(10)
    for w in items:
        if isinstance(w, QWidget):
            body_lay.addWidget(w)
        else:
            body_lay.addLayout(w)
    lay.addWidget(body, 1)
    return lay


def mark_desktop_action(button, role: str = "default"):
    button.setProperty("desktopAction", True)
    if role == "primary":
        button.setProperty("accent", True)
    elif role == "danger":
        button.setProperty("role", "danger")
    button.setMinimumHeight(28)

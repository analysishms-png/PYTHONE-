"""Print pipeline foundation (P10) - Crystal/POSBillPrint stub replacement.

Simple print preview: QTextEdit view + QPrinter/QPrintDialog +
QPrintPreviewDialog. NOTE: PyQt6 me QPrinter QtGui me nahi hai - Qt6 me
QtPrintSupport me shift ho chuka hai.

API:
  grid_to_text(headers, rows)  - fixed-width columns (FGrid -> spool text)
  company_header()             - Company table se bill header (na mile to '')
  print_text(text, title)      - direct QPrintDialog -> QTextDocument.print
  print_html(html, title)      - same, HTML body
  preview_text(text, title)    - TextPreviewDialog (QTextEdit + Print/Preview)
  preview_html(html, title)    - same, HTML body
"""
from __future__ import annotations

from PyQt6.QtGui import QFont, QTextDocument
from PyQt6.QtPrintSupport import (QPrintDialog, QPrintPreviewDialog,
                                  QPrinter)
from PyQt6.QtWidgets import (QDialog, QHBoxLayout, QPushButton, QTextEdit,
                             QVBoxLayout)

_MONO = QFont("Courier New", 10)


def grid_to_text(headers, rows) -> str:
    """headers + rows (QTableWidget style) -> fixed-width column text."""
    hdrs = ["" if h is None else str(h) for h in (headers or [])]
    body = [["" if c is None else str(c) for c in row] for row in (rows or [])]
    ncol = len(hdrs)
    for row in body:
        ncol = max(ncol, len(row))
    if ncol == 0:
        return ""
    widths = [0] * ncol
    for i, h in enumerate(hdrs):
        widths[i] = len(h)
    for row in body:
        for i, c in enumerate(row):
            if len(c) > widths[i]:
                widths[i] = len(c)

    def _fmt(values) -> str:
        cells = [(values[i] if i < len(values) else "").ljust(widths[i])
                 for i in range(ncol)]
        return "  ".join(cells).rstrip()

    out = []
    if hdrs:
        out.append(_fmt(hdrs))
        out.append("-" * (sum(widths) + 2 * (ncol - 1)))
    out.extend(_fmt(row) for row in body)
    return "\n".join(out)


def company_header() -> str:
    """Company table ka Comp_Name (bill header). DB/config fail -> ''."""
    try:
        from HMS_py.core import company as _company
        rows = _company.list_companies()
        if rows:
            name = str(rows[0].get("name") or "").strip()
            if name and name != "Property (INI)":
                return name
    except Exception:
        pass
    return ""


def _make_document(text: str = "", html: str = "") -> QTextDocument:
    doc = QTextDocument()
    if html:
        doc.setHtml(html)
    else:
        doc.setPlainText(text or "")
        doc.setDefaultFont(_MONO)
    return doc


def _make_printer(title: str) -> QPrinter:
    printer = QPrinter(QPrinter.PrinterMode.HighResolution)
    printer.setDocName(title or "Print")
    return printer


def print_text(text, title: str = "Print", parent=None) -> bool:
    """QPrintDialog kholkar plain-text print karo. True = print hua."""
    printer = _make_printer(title)
    dlg = QPrintDialog(printer, parent)
    if dlg.exec() != int(QDialog.DialogCode.Accepted):
        return False
    _make_document(text=text).print(printer)
    return True


def print_html(html, title: str = "Print", parent=None) -> bool:
    """QPrintDialog kholkar HTML print karo. True = print hua."""
    printer = _make_printer(title)
    dlg = QPrintDialog(printer, parent)
    if dlg.exec() != int(QDialog.DialogCode.Accepted):
        return False
    _make_document(html=html).print(printer)
    return True


def _page_preview(doc: QTextDocument, title: str, parent=None) -> None:
    """QPrintPreviewDialog - paintRequested pe document print karo."""
    printer = _make_printer(title)
    dlg = QPrintPreviewDialog(printer, parent)
    dlg.setWindowTitle(f"Preview - {title}")
    dlg.paintRequested.connect(lambda p, d=doc: d.print(p))
    dlg.exec()


class TextPreviewDialog(QDialog):
    """Simple print preview: QTextEdit (read-only) + Print/Preview buttons."""

    def __init__(self, text: str = "", html: str = "",
                 title: str = "Print Preview", parent=None):
        super().__init__(parent)
        self._text = text or ""
        self._html = html or ""
        self.setWindowTitle(title)
        self.resize(720, 560)

        lay = QVBoxLayout(self)
        self.edit = QTextEdit(self)
        self.edit.setReadOnly(True)
        if self._html:
            self.edit.setHtml(self._html)
        else:
            self.edit.setPlainText(self._text)
            self.edit.document().setDefaultFont(_MONO)
        lay.addWidget(self.edit, 1)

        bar = QHBoxLayout()
        btn_print = QPushButton("Print...", self)
        btn_print.setToolTip("Open QPrintDialog and print")
        btn_print.clicked.connect(self._on_print)
        btn_preview = QPushButton("Print Preview...", self)
        btn_preview.setToolTip("Open QPrintPreviewDialog (page view)")
        btn_preview.clicked.connect(self._on_page_preview)
        btn_close = QPushButton("Close", self)
        btn_close.setToolTip("Close preview")
        btn_close.clicked.connect(self.reject)
        bar.addWidget(btn_print)
        bar.addWidget(btn_preview)
        bar.addStretch(1)
        bar.addWidget(btn_close)
        lay.addLayout(bar)

    def _on_print(self):
        if self._html:
            print_html(self._html, self.windowTitle(), self)
        else:
            print_text(self._text, self.windowTitle(), self)

    def _on_page_preview(self):
        _page_preview(_make_document(text=self._text, html=self._html),
                      self.windowTitle(), self)


def preview_text(text, title: str = "Print Preview", parent=None) -> bool:
    """Text preview dialog dikhao (Print se QPrintDialog khulta hai)."""
    dlg = TextPreviewDialog(text=text, title=title, parent=parent)
    dlg.exec()
    return True


def preview_html(html, title: str = "Print Preview", parent=None) -> bool:
    """HTML preview dialog dikhao."""
    dlg = TextPreviewDialog(html=html, title=title, parent=parent)
    dlg.exec()
    return True

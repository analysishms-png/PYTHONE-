"""Reservation flat re-export shim.

Back-compat so tests can do `from HMS_py.core import reservation`.
The implementation lives in core/front_office/reservation.py.
"""
from HMS_py.core.front_office.reservation import (  # noqa: F401
    SITE_CODE,
    USER,
    VTYPE,
    VPREFIX,
    advance_deposit,
    cancel,
    delete_draft,
    get,
    insert_draft,
    list_reservations,
    make_docid,
    mark_no_show,
    next_bookno,
    update,
    voucher_config,
)

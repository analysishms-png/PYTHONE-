# Front Office UI Improvement Plan (Laravel-Inspired)

## Design Principles from Laravel Views

### 1. **Modal-Based Operations** (roomstatus.blade.php:190-290)
- Each operation (Amend Stay, Guest Ledger, Room Change, etc.) in its own modal
- Iframe-based content loading for complex forms
- Consistent modal header: Title + Folio No. + Close button
- Grouped actions under "More Options" dropdown

### 2. **Color-Coded Status Indicators** (roomstatus.blade.php:11-31)
- Room status: In House (green), Confirmed (blue), Billed (orange), etc.
- Room indicators: No Smoking, Dirty, Work Order, Connected Rooms
- Visual badges with icons

### 3. **Context-Aware Action Menus** (roomstatus.blade.php:869-892)
- Actions change based on state (billno == '0' vs not)
- Admin-only actions (Bill Cancel)
- Button groups with consistent styling

### 4. **Real-Time Data with Fallbacks**
- AJAX operations with SweetAlert confirmations
- Loading states, error handling
- Auto-refresh on success

### 5. **Professional Data Tables**
- Search, filter, pagination
- Column sorting
- Row actions (view, edit, delete)

---

## Module-Wise Improvement Plan

### 1. Room Status / Housekeeping (`roomstatus_ui.py`)
**Current**: Basic grid + HK buttons
**Laravel Target**: `roomstatus.blade.php` + `roomstatusinhouse.blade.php`

**Improvements**:
- [ ] Visual room rack grid (like `front_office_dashboard.py` RoomRackItem)
- [ ] Color-coded status badges with icons
- [ ] Modal-based operations (Amend Stay, Guest Ledger, Room Change, Bill Print)
- [ ] Block-wise filtering (building/floor)
- [ ] Date range selector with default days
- [ ] Search with debounce
- [ ] Occupancy summary cards (KPIs)
- [ ] Room detail panel on click (sidebar or modal)
- [ ] HK status buttons with confirmation (SweetAlert style)

### 2. Check In (`frontoffice.py:open_checkin` → new `checkin_ui.py`)
**Current**: Via `frontoffice.py`
**Laravel Target**: `addnewprofile.blade.php` pattern

**Improvements**:
- [ ] Multi-step wizard: Guest Search → Room Selection → Profile → Confirm
- [ ] Guest profile inline editing (like addnewprofile table)
- [ ] Room rack visual selector
- [ ] Rate plan picker with plan details
- [ ] Company/Travel agent autocomplete
- [ ] ID proof capture (photo upload)
- [ ] Real-time availability check

### 3. Check Out (`checkout_ui.py`)
**Current**: Functional but basic
**Laravel Target**: Bill Settlement modal pattern

**Improvements**:
- [ ] Folio summary with balance breakdown (Total/Paid/Balance)
- [ ] Payment mode selector (Cash/Card/UPI/Online)
- [ ] Multi-payment support
- [ ] Bill print preview before settle
- [ ] Corporate billing / direct bill support
- [ ] Express checkout (one-click for zero balance)

### 4. Guest Registration Card / GRC (`grc_ui.py`)
**Current**: Implemented
**Laravel Target**: Professional print layout

**Improvements**:
- [ ] Print-ready A4 layout with hotel letterhead
- [ ] QR code for guest verification
- [ ] Multi-language support
- [ ] Digital signature capture
- [ ] Email/WhatsApp send option

### 5. Amend Stay (`amend_stay_ui.py`) ✅ **DONE**
**Current**: Full implementation with grid, detail panel, history
**Laravel Pattern**: `ammendstaymodal` iframe modal

**Enhancements** (post-launch):
- [ ] Move to modal pattern (consistency)
- [ ] Inline date/time picker with validation hints
- [ ] Show amendment impact preview (extra nights, rate change)

### 6. Post Charges / Payment (`fd_forms_ui.py`)
**Current**: Basic forms
**Laravel Target**: Guest Charge modal + Advance Charge modal

**Improvements**:
- [ ] Charge template picker (common charges)
- [ ] Room charge auto-calculation (room rate × days)
- [ ] GST breakdown preview
- [ ] Split charge across folios
- [ ] Payment: multiple modes, card terminal integration

### 7. Room Change (`fo_sub_forms_ui.py:RoomChangeWindow`)
**Current**: Basic
**Laravel Target**: Room Change modal

**Improvements**:
- [ ] Visual room rack for target room selection
- [ ] Rate difference calculation
- [ ] Guest profile transfer
- [ ] HK status sync

### 8. Reservation Browser (`reservation_browser.py`)
**Current**: Functional
**Laravel Target**: `reservationct.blade.php` + search/filter

**Improvements**:
- [ ] Advanced filter panel (date range, status, company, rate plan)
- [ ] Column customization
- [ ] Bulk actions (confirm, cancel, check-in)
- [ ] Export to Excel/PDF
- [ ] Calendar view

### 9. Group Check-Out (`FdGrpCheckOut.frm`) ❌ **MISSING**
**Laravel Target**: Multi-folio settlement

**Implementation**:
- [ ] Groupfolio list with individual balances
- [ ] Master folio settlement
- [ ] Split payment across group
- [ ] Group bill print

### 10. Walk-In Entry (`walkin_rack_ui.py`)
**Current**: Basic
**Laravel Target**: Quick check-in flow

**Improvements**:
- [ ] One-screen walk-in (guest + room + rate)
- [ ] ID scan/photo capture
- [ ] Instant folio creation
- [ ] Rate plan quick-pick

---

## Shared UI Components to Build

### 1. `HMS_py/ui/components/` (new)
```
components/
├── __init__.py
├── stat_card.py           # KPI metric card (from dashboard)
├── room_rack_item.py      # Visual room tile (from dashboard)
├── modal_base.py          # Base modal with header/body/footer
├── data_table.py          # Enhanced QTableWidget with search/sort
├── status_badge.py        # Color-coded status indicator
├── action_dropdown.py     # "More Options" dropdown
├── date_range_picker.py   # From/to date with presets
├── search_box.py          # Debounced search with clear
├── confirmation_dialog.py # SweetAlert-style confirm
├── toast.py               # Non-blocking notifications
└── print_preview.py       # Print preview dialog
```

### 2. Theme Enhancements (`HMS_py/ui/main_window/theme.py`)
- Status color palette (success/warning/danger/neutral)
- Glass morphism cards
- Consistent spacing/scale
- Dark/light mode sync

---

## Implementation Order (Priority)

| Priority | Module | Effort | Dependencies |
|----------|--------|--------|--------------|
| 1 | Shared Components | 2 days | None |
| 2 | Room Status / HK | 2 days | Components |
| 3 | Check In | 2 days | Components, Room Rack |
| 4 | Check Out | 1.5 days | Components |
| 5 | Post Charges / Payment | 1.5 days | Components |
| 6 | Room Change | 1 day | Components |
| 7 | Reservation Browser | 1.5 days | Components |
| 8 | Group Check-Out | 1.5 days | Components |
| 9 | Walk-In Entry | 1 day | Components |
| 10 | GRC Print Polish | 0.5 days | None |

**Total**: ~14 days for complete Front Office UI modernization

---

## Migration Notes

### Do Not Break
- Existing core logic imports (`folio.py`, `checkin.py`, `checkout.py`, etc.)
- Shell registry wiring (`shell._form_registry()`)
- PYT* safety guards
- DB transaction patterns

### VB6 Parity Must-Haves
- Exact field order in forms
- Same validation messages (Hinglish)
- Same keyboard shortcuts (Ctrl+S, Esc, F5)
- Same color semantics (VB6 room rack colors)

### Laravel-Inspired Additions
- Modal-based UX (not new windows)
- Visual room rack (not just table)
- Real-time search/filter
- Toast notifications (not message boxes for success)
- Professional print layouts
- Keyboard navigation (Tab order, Enter=next, Esc=close)

---

## Testing Checklist per Module

- [ ] Offscreen Qt test (dialog opens, no crash)
- [ ] Live DB test (reads data, shows in grid)
- [ ] PYT guard test (non-PYT blocked)
- [ ] Write test (transaction + rollback)
- [ ] Keyboard shortcuts work
- [ ] Theme toggle (light/dark)
- [ ] Resize behavior
- [ ] Print preview renders
@extends('tools.layouts.main')
@section('main-container')
    @include('cdns.select')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

    <style>
        .editable-cell {
            cursor: pointer;
            background-color: #ffffff;
            transition: all 0.3s;
            padding: 10px !important;
            border: 1px solid #dee2e6;
        }

        .editable-cell:hover {
            background-color: #f0f8ff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }

        .editing {
            background-color: #fff3cd !important;
            padding: 5px !important;
        }

        .table-container {
            overflow-x: auto;
            margin-top: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background: #fff;
            width: 100%;
        }

        .table-container table {
            margin-bottom: 0 !important;
            width: 100% !important;
        }

        .delete-btn {
            cursor: pointer;
            color: #dc3545;
            font-size: 18px;
            transition: all 0.3s;
        }

        .delete-btn:hover {
            color: #bd2130;
            transform: scale(1.2);
        }

        #data_table {
            width: 100% !important;
            border-collapse: collapse !important;
        }

        #data_table thead th {
            background: #f8f9fa !important;
            color: #212529 !important;
            font-weight: 700 !important;
            padding: 12px !important;
            text-align: center !important;
            border: 1px solid #dee2e6 !important;
            font-size: 14px;
            white-space: nowrap;
        }

        #data_table tbody td {
            padding: 10px !important;
            vertical-align: middle !important;
            border: 1px solid #dee2e6 !important;
            text-align: center !important;
            white-space: nowrap;
            font-size: 13px;
        }

        #data_table tbody tr:hover {
            background-color: #f5f5f5 !important;
        }

        .column-filter {
            width: 100%;
            padding: 6px 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 13px;
            transition: all 0.3s;
        }

        .column-filter:focus {
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.5);
            outline: none;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            border-radius: 10px 10px 0 0 !important;
            background: #343a40 !important;
        }

        .btn-primary {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            transition: all 0.3s;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }

        .dataTables_wrapper .dataTables_length select,
        .dataTables_wrapper .dataTables_filter input {
            border: 1px solid #667eea;
            border-radius: 4px;
            padding: 5px 10px;
        }

        .page-item.active .page-link {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-color: #667eea;
        }

        .action-cell {
            text-align: center !important;
            background-color: #fff5f5 !important;
        }

        .search-condition-row {
            margin-bottom: 15px;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 5px;
            border: 1px solid #dee2e6;
        }

        .search-condition-row .form-control {
            border-radius: 4px;
        }

        .remove-condition {
            cursor: pointer;
            color: #dc3545;
            font-size: 20px;
        }

        .remove-condition:hover {
            color: #bd2130;
        }

        .column-badge {
            display: inline-block;
            padding: 6px 12px;
            margin: 4px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 20px;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 13px;
            font-weight: 500;
        }

        .column-badge:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(102, 126, 234, 0.4);
        }

        .active-input {
            border: 2px solid #667eea !important;
            box-shadow: 0 0 8px rgba(102, 126, 234, 0.3) !important;
        }

        .column-suggestions-dropdown {
            position: absolute;
            background: white;
            border: 2px solid #667eea;
            border-radius: 6px;
            max-height: 250px;
            overflow-y: auto;
            z-index: 9999;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            display: none;
            width: auto;
            min-width: 200px;
        }

        .column-suggestion-item {
            padding: 10px 15px;
            cursor: pointer;
            transition: all 0.2s;
            font-family: monospace;
            font-size: 13px;
            border-bottom: 1px solid #f0f0f0;
        }

        .column-suggestion-item:hover {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .column-suggestion-item:last-child {
            border-bottom: none;
        }

        .suggestion-header {
            padding: 8px 15px;
            background: #f8f9fa;
            font-weight: bold;
            font-size: 12px;
            color: #495057;
            border-bottom: 2px solid #667eea;
            position: sticky;
            top: 0;
        }

        .input-wrapper {
            position: relative;
        }

        .row-selected {
            background-color: #fff3cd !important;
            border-left: 5px solid #ffc107 !important;
        }

        .row-selected td {
            background-color: #fff3cd !important;
        }

        .row-highlighted {
            background-color: #d4edff !important;
            border-left: 5px solid #0066cc !important;
            box-shadow: inset 0 0 10px rgba(0, 102, 204, 0.3) !important;
        }

        .row-highlighted td {
            background-color: #d4edff !important;
        }

        .multi-delete-checkbox {
            cursor: pointer;
            width: 18px;
            height: 18px;
            accent-color: #ffc107;
        }

        .multi-delete-checkbox:hover {
            transform: scale(1.1);
        }

        .action-cell-multi {
            text-align: center !important;
            background-color: #f0f8ff !important;
        }

        .action-cell-multi input[type="checkbox"] {
            cursor: pointer;
        }
    </style>

    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="card-title mb-0">Table Management System</h4>
                        </div>
                        <div class="card-body">
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="table_select">Select Table:</label>
                                        <select class="form-control select2" id="table_select">
                                            <option value="">-- Select Table --</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="property_id">Property ID:</label>
                                        <input type="text" class="form-control" id="property_id" placeholder="Enter Property ID">
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <div class="custom-control custom-checkbox mb-2">
                                        <input type="checkbox" class="custom-control-input" id="sql_mode">
                                        <label class="custom-control-label" for="sql_mode">
                                            <strong>SQL Mode</strong> (Advanced: Use custom SQL WHERE clause)
                                        </label>
                                    </div>
                                    <div id="sql_container" style="display: none;">
                                        <div class="form-group">
                                            <label for="select_columns">Select Columns (comma-separated, leave blank for all):</label>
                                            <div class="input-wrapper">
                                                <input type="text" class="form-control column-suggest-input" id="select_columns" placeholder="Example: id, name, rate, status (or leave blank for all columns)">
                                                <div class="column-suggestions-dropdown" id="suggestions_select_columns"></div>
                                            </div>
                                            <small class="text-muted">Enter column names separated by commas to fetch only specific columns.</small>
                                        </div>
                                        <div class="form-group mt-2">
                                            <label for="sql_where">SQL WHERE Clause (without "WHERE"):</label>
                                            <div class="input-wrapper">
                                                <textarea class="form-control column-suggest-input" id="sql_where" rows="2" placeholder="Example: Key = 'value' AND key = 'value'"></textarea>
                                                <div class="column-suggestions-dropdown" id="suggestions_sql_where"></div>
                                            </div>
                                        </div>
                                        <div class="form-group mt-2">
                                            <label for="sql_orderby">ORDER BY Clause (optional):</label>
                                            <div class="input-wrapper">
                                                <input type="text" class="form-control column-suggest-input" id="sql_orderby" placeholder="Example: rate DESC, name ASC">
                                                <div class="column-suggestions-dropdown" id="suggestions_sql_orderby"></div>
                                            </div>
                                            <small class="text-muted">Enter column names with ASC/DESC. Example: rate DESC, created_at ASC</small>
                                        </div>
                                        <div class="form-group mt-2">
                                            <label for="sql_groupby">GROUP BY Clause (optional):</label>
                                            <div class="input-wrapper">
                                                <input type="text" class="form-control column-suggest-input" id="sql_groupby" placeholder="Example: category, status">
                                                <div class="column-suggestions-dropdown" id="suggestions_sql_groupby"></div>
                                            </div>
                                            <small class="text-muted">Enter column names for grouping. Example: category, status</small>
                                        </div>
                                        <div class="form-group mt-2">
                                            <label for="sql_between">BETWEEN Clause (optional):</label>
                                            <div class="input-wrapper">
                                                <input type="text" class="form-control column-suggest-input" id="sql_between" placeholder="Example: rate BETWEEN 100 AND 500">
                                                <div class="column-suggestions-dropdown" id="suggestions_sql_between"></div>
                                            </div>
                                            <small class="text-muted">Enter range condition. Example: rate BETWEEN 100 AND 500, created_at BETWEEN '2024-01-01' AND '2024-12-31'</small>
                                        </div>
                                        <small class="text-muted">
                                            <strong>Examples:</strong><br>
                                            <strong>WHERE:</strong> rate > 100 AND status = 'active'<br>
                                            <strong>ORDER BY:</strong> rate DESC, name ASC<br>
                                            <strong>GROUP BY:</strong> category, property_id<br>
                                            <strong>BETWEEN:</strong> rate BETWEEN 100 AND 500
                                        </small>
                                    </div>
                                </div>
                            </div>

                            <!-- Advanced Multi-Column Search -->
                            <div class="card mb-3" id="advanced_search_card" style="display: none;">
                                <div class="card-header bg-info text-white">
                                    <h5 class="mb-0">Advanced Column Search</h5>
                                </div>
                                <div class="card-body">
                                    <div id="search_conditions_container"></div>
                                    <button type="button" class="btn btn-sm btn-success" id="add_search_condition">
                                        <i class="fa fa-plus"></i> Add Search Condition
                                    </button>
                                    <button type="button" class="btn btn-sm btn-primary" id="execute_search">
                                        <i class="fa fa-search"></i> Execute Search
                                    </button>
                                    <button type="button" class="btn btn-sm btn-danger" id="clear_search">
                                        <i class="fa fa-times"></i> Clear All
                                    </button>
                                </div>
                            </div>

                            <!-- Available Columns Display -->
                            <div class="card mb-3" id="columns_info_card" style="display: none;">
                                <div class="card-header bg-success text-white">
                                    <h5 class="mb-0"><i class="fa fa-columns"></i> Available Columns</h5>
                                </div>
                                <div class="card-body">
                                    <div id="available_columns_display" style="display: flex; flex-wrap: wrap; gap: 5px;"></div>
                                </div>
                            </div>

                            <!-- Available Columns Display -->
                            <div class="row mb-3" id="columns_display_section" style="display: none;">
                                <div class="col-md-12">
                                    <div class="card" style="background: #f8f9fa; border: 1px solid #dee2e6;">
                                        <div class="card-body">
                                            <h6 class="mb-2" style="color: #495057;"><i class="fa fa-columns"></i> Available Columns (Click to insert):</h6>
                                            <div id="available_columns_list"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-primary" id="fetch_data_btn">
                                        <i class="fa fa-search"></i> Fetch Data
                                    </button>
                                    <button type="button" class="btn btn-secondary" id="refresh_btn">
                                        <i class="fa fa-refresh"></i> Refresh
                                    </button>
                                    <button type="button" class="btn btn-success" id="bulk_update_btn" style="display: none;">
                                        <i class="fa fa-save"></i> Bulk Update (SQL)
                                    </button>
                                    <button type="button" class="btn btn-info" id="insert_record_btn" style="display: none;">
                                        <i class="fa fa-plus"></i> Insert Record
                                    </button>
                                    <button type="button" class="btn btn-warning" id="toggle_multi_delete_btn" style="display: none;">
                                        <i class="fa fa-trash"></i> <span id="multi_delete_mode_text">Enable Multi-Delete</span>
                                    </button>
                                    <button type="button" class="btn btn-danger" id="delete_selected_btn" style="display: none;">
                                        <i class="fa fa-trash"></i> Delete Selected (<span id="selected_count">0</span>)
                                    </button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-container">
                                        <table id="data_table" class="table table-bordered table-striped table-hover" style="width:100%">
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        $(document).ready(function() {
            let currentTable = null;
            let currentTableName = '';
            let propertyid = '';
            let currentColumns = [];
            let currentTableParams = {
                tableName: '',
                propertyId: '',
                sqlWhere: '',
                orderBy: '',
                groupBy: '',
                betweenClause: ''
            };
            let lastRequestedParams = {
                tableName: '',
                propertyId: '',
                sqlWhere: '',
                orderBy: '',
                groupBy: '',
                betweenClause: ''
            };
            let primaryKey = 'id';
            let searchConditions = [];
            let isLoading = false; // Flag to prevent multiple calls
            let activeInputField = null; // Track which input is active
            let multiDeleteMode = false; // Track if multi-delete mode is enabled
            let selectedRows = new Set(); // Track selected rows for multi-delete
            let highlightedRow = null; // Track highlighted row for single delete
            let isTableInitializing = false; // Flag to prevent multiple table initializations
            let lastFetchId = 0; // Track fetch request ID to identify stale requests
            let lastValidFetchId = 0; // Track the last valid fetch that completed
            let pendingXhr = null; // Store pending XHR to abort if needed

            // Toastr configuration
            toastr.options = {
                "closeButton": true,
                "progressBar": true,
                "positionClass": "toast-top-right",
                "timeOut": "3000"
            };

            // Track active input for column insertion
            $(document).on('focus', '.column-suggest-input', function() {
                activeInputField = $(this);
                let inputId = $(this).attr('id');
                let dropdownId = 'suggestions_' + inputId;

                // Hide all other dropdowns
                $('.column-suggestions-dropdown').hide();

                // Show dropdown for this input if columns are available
                if (currentColumns.length > 0) {
                    showColumnSuggestions(inputId, '');
                    $('#' + dropdownId).show();
                }
            });

            // Handle typing in inputs - filter suggestions
            $(document).on('keyup', '.column-suggest-input', function(e) {
                // Don't filter on arrow keys or enter
                if ([38, 40, 13].includes(e.keyCode)) return;

                let inputId = $(this).attr('id');
                let inputValue = $(this).val();

                // Get the last word being typed (after comma or space)
                let words = inputValue.split(/[,\s]+/);
                let lastWord = words[words.length - 1].toLowerCase();

                showColumnSuggestions(inputId, lastWord);
            });

            // Hide dropdown when clicking outside
            $(document).on('click', function(e) {
                if (!$(e.target).closest('.input-wrapper').length) {
                    $('.column-suggestions-dropdown').hide();
                }
            });

            // Function to show column suggestions
            function showColumnSuggestions(inputId, filter) {
                let dropdownId = 'suggestions_' + inputId;
                let dropdown = $('#' + dropdownId);

                if (currentColumns.length === 0) {
                    dropdown.hide();
                    return;
                }

                let html = '<div class="suggestion-header"><i class="fa fa-columns"></i> Available Columns (Click to insert)</div>';
                let filteredColumns = currentColumns.filter(col => col.toLowerCase().includes(filter));

                if (filteredColumns.length === 0) {
                    html += '<div class="column-suggestion-item" style="color: #999; cursor: default;">No matching columns</div>';
                } else {
                    filteredColumns.forEach(function(column) {
                        html += `<div class="column-suggestion-item" data-column="${column}" data-target="${inputId}">${column}</div>`;
                    });
                }

                dropdown.html(html);

                // Position dropdown
                let input = $('#' + inputId);
                let inputPos = input.position();
                dropdown.css({
                    'top': input.outerHeight() + 'px',
                    'left': '0px',
                    'min-width': input.outerWidth() + 'px'
                });
            }

            // Handle column suggestion click
            $(document).on('click', '.column-suggestion-item', function() {
                let columnName = $(this).data('column');
                let targetId = $(this).data('target');

                if (!columnName || !targetId) return;

                let targetInput = $('#' + targetId);
                let currentValue = targetInput.val();

                // Get cursor position
                let cursorPos = targetInput[0].selectionStart;

                // Find the start of the current word being typed
                let beforeCursor = currentValue.substring(0, cursorPos);
                let afterCursor = currentValue.substring(cursorPos);

                // Find the last word boundary (space or comma)
                let lastWordStart = Math.max(
                    beforeCursor.lastIndexOf(' '),
                    beforeCursor.lastIndexOf(',')
                ) + 1;

                // Replace the current word with the column name
                let newValue = currentValue.substring(0, lastWordStart) + columnName + afterCursor;
                targetInput.val(newValue);

                // Set cursor after the inserted column name
                let newCursorPos = lastWordStart + columnName.length;
                targetInput[0].setSelectionRange(newCursorPos, newCursorPos);
                targetInput.focus();

                // Hide dropdown
                $('.column-suggestions-dropdown').hide();

                toastr.success(`Column "${columnName}" inserted`);
            });

            // Fetch all tables on page load
            fetchTables();

            // Add Search Condition
            $('#add_search_condition').off('click').on('click', function() {
                addSearchCondition();
            });

            // Execute Search
            $('#execute_search').off('click').on('click', function() {
                executeAdvancedSearch();
            });

            // Clear Search
            $('#clear_search').off('click').on('click', function() {
                searchConditions = [];
                $('#search_conditions_container').empty();
                toastr.success('All search conditions cleared');
            });

            // SQL Mode Toggle
            $('#sql_mode').change(function() {
                if ($(this).is(':checked')) {
                    $('#sql_container').slideDown();
                    // Don't disable property_id input so it can still be used
                    $('#bulk_update_btn').show();
                    $('#insert_record_btn').show();
                } else {
                    $('#sql_container').slideUp();
                    $('#bulk_update_btn').hide();
                    $('#insert_record_btn').hide();
                }
            });

            function refreshMultiDeleteUI() {
                if (!currentTable || !$.fn.DataTable.isDataTable('#data_table')) {
                    return;
                }

                currentTable.rows({
                    page: 'current'
                }).every(function() {
                    let rowNode = $(this.node());
                    let pk = rowNode.find('.editable-cell').first().data('pk');
                    if (!pk) {
                        let icon = rowNode.find('.delete-btn').data('pk');
                        if (icon) pk = icon;
                    }
                    if (!pk) return;

                    let actionCell = rowNode.find('td').first();
                    if (multiDeleteMode) {
                        actionCell.html(`<div class="action-cell-multi"><input type="checkbox" class="row-checkbox multi-delete-checkbox" data-pk="${pk}" title="Select for deletion"></div>`);
                    } else {
                        actionCell.html(`<div class="action-cell"><i class="fa fa-trash delete-btn" data-pk="${pk}" title="Delete Record"></i></div>`);
                    }
                });

                attachDeleteEvents();
            }

            // Toggle Multi-Delete Mode
            $('#toggle_multi_delete_btn').off('click').on('click', function() {
                multiDeleteMode = !multiDeleteMode;
                selectedRows.clear();
                highlightedRow = null;

                if (multiDeleteMode) {
                    $('#multi_delete_mode_text').text('Disable Multi-Delete');
                    $('#toggle_multi_delete_btn').addClass('active');
                    $('#delete_selected_btn').show();
                    toastr.info('Multi-Delete Mode Enabled - Click rows to select');
                } else {
                    $('#multi_delete_mode_text').text('Enable Multi-Delete');
                    $('#toggle_multi_delete_btn').removeClass('active');
                    $('#delete_selected_btn').hide();
                    $('#selected_count').text('0');
                    toastr.info('Multi-Delete Mode Disabled');
                }

                // Refresh table display for current rows
                try {
                    if (currentTable && currentTableName) {
                        let settings = currentTable.settings()[0];
                        let isServerSide = settings.oFeatures.bServerSide;
                        if (isServerSide) {
                            currentTable.ajax.reload();
                        } else {
                            currentTable.rows().invalidate().draw();
                        }
                    }

                    refreshMultiDeleteUI();
                    console.log('Table mode switched to multiDeleteMode =', multiDeleteMode);
                } catch (error) {
                    console.error('Error reloading table:', error);
                    toastr.error('Error updating table mode');
                }
            });

            // Delete Selected Rows Button
            $('#delete_selected_btn').off('click').on('click', function() {
                if (selectedRows.size === 0) {
                    toastr.warning('Please select at least one row to delete');
                    return;
                }

                let selectedCount = selectedRows.size;
                Swal.fire({
                    title: 'Delete Multiple Records?',
                    html: `<p>You are about to delete <strong>${selectedCount}</strong> record(s). This action cannot be undone!</p>`,
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#dc3545',
                    cancelButtonColor: '#6c757d',
                    confirmButtonText: 'Yes, Delete All!',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        deleteMultipleRecords();
                    }
                });
            });

            // Display Available Columns Function
            function displayAvailableColumns(columns) {
                let columnsHtml = '';
                columns.forEach(function(column) {
                    columnsHtml += `<span class="column-badge">${column}</span>`;
                });
                $('#available_columns_list').html(columnsHtml);
                $('#columns_display_section').show();

                // Initialize suggestions for visible inputs
                $('.column-suggest-input').each(function() {
                    if ($(this).is(':visible')) {
                        let inputId = $(this).attr('id');
                        showColumnSuggestions(inputId, '');
                    }
                });
            }

            function fetchTables() {
                $.ajax({
                    url: "{{ route('fetch_tables') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        if (response.status) {
                            let options = '<option value="">-- Select Table --</option>';
                            response.tables.forEach(function(table) {
                                options += `<option value="${table}">${table}</option>`;
                            });
                            $('#table_select').html(options);
                            toastr.success('Tables loaded successfully');
                        } else {
                            toastr.error(response.message);
                        }
                    },
                    error: function(xhr) {
                        toastr.error('Error loading tables');
                    }
                });
            }

            // Fetch data button click
            $('#fetch_data_btn').off('click').on('click', function() {
                let tableName = $('#table_select').val();
                let sqlMode = $('#sql_mode').is(':checked');
                let propertyId = $('#property_id').val();
                let sqlWhere = $('#sql_where').val();
                let selectColumns = $('#select_columns').val();
                let orderBy = $('#sql_orderby').val();
                let groupBy = $('#sql_groupby').val();
                let betweenClause = $('#sql_between').val();

                if (!tableName) {
                    toastr.warning('Please select a table');
                    return;
                }

                if (sqlMode) {
                    if (!sqlWhere) {
                        toastr.warning('Please enter SQL WHERE clause');
                        return;
                    }

                    // Property ID is used only to select main/tenant database.
                    // Do not add it to the SQL WHERE clause.
                    fetchTableData(
                        tableName,
                        propertyId,
                        sqlWhere,
                        selectColumns,
                        orderBy,
                        groupBy,
                        betweenClause
                    );
                } else {
                    if (!propertyId) {
                        toastr.warning('Please enter Property ID');
                        return;
                    }
                    fetchTableData(tableName, propertyId, null, null, null, null, null);
                }
            });

            // Refresh button
            $('#refresh_btn').off('click').on('click', function() {
                let sqlMode = $('#sql_mode').is(':checked');
                let propertyId = $('#property_id').val();
                let selectColumns = $('#select_columns').val();
                let orderBy = $('#sql_orderby').val();
                let groupBy = $('#sql_groupby').val();
                let betweenClause = $('#sql_between').val();

                if (currentTableName) {
                    if (sqlMode && $('#sql_where').val()) {
                        let finalWhere = $('#sql_where').val();

                        // Property ID is used only to select main/tenant database.
                        // Do not add Property ID to the SQL WHERE clause.
                        fetchTableData(
                            currentTableName,
                            propertyId,
                            finalWhere,
                            selectColumns,
                            orderBy,
                            groupBy,
                            betweenClause
                        );
                    } else if (!sqlMode && propertyId) {
                        fetchTableData(currentTableName, propertyId, null, null, null, null, null);
                    } else {
                        toastr.info('Please provide required filters');
                    }
                } else {
                    toastr.info('Please select a table first');
                }
            });

            // Bulk Update Button
            $('#bulk_update_btn').click(function() {
                let tableName = $('#table_select').val();
                let sqlWhere = $('#sql_where').val();
                let betweenClause = $('#sql_between').val();

                if (!tableName || !sqlWhere) {
                    toastr.warning('Please select table and enter SQL WHERE clause');
                    return;
                }

                if (currentColumns.length === 0) {
                    toastr.warning('Please fetch table data first to load column names');
                    return;
                }

                // Build complete WHERE clause with BETWEEN if provided
                let finalWhere = sqlWhere;

                if (betweenClause && betweenClause.trim() !== '') {
                    finalWhere = `(${sqlWhere}) AND (${betweenClause})`;
                }

                let displayWhereClause = finalWhere;
                let propertyId = $('#property_id').val();

                // Build column options for datalist
                let columnOptions = '';
                currentColumns.forEach(col => {
                    columnOptions += `<option value="${col}">`;
                });

                // Ask for multiple column-value pairs
                Swal.fire({
                    title: 'Enter Column-Value Pairs',
                    html: `
                        <div style="text-align: left;">
                            <div style="background: #f0f8ff; padding: 10px; border-radius: 5px; margin-bottom: 10px;">
                                <strong>Available Columns:</strong><br>
                                <span style="color: #0066cc; font-size: 12px;">${currentColumns.join(', ')}</span>
                            </div>
                            <label for="column_value_pairs" style="font-weight: bold; margin-bottom: 10px; display: block;">
                                Enter column = value pairs (one per line):
                            </label>
                            <textarea id="column_value_pairs" class="swal2-textarea" rows="6" 
                                placeholder="${currentColumns[0] || 'column_name'} = value\n${currentColumns[1] || 'column_name2'} = 'text value'" 
                                style="width: 100%; font-family: monospace; font-size: 14px;"></textarea>
                            <small style="color: #666; margin-top: 10px; display: block;">
                                <strong>Examples:</strong><br>
                                rate = 150<br>
                                status = 'active'<br>
                                discount = 10<br>
                                description = 'Updated'<br>
                                <em>Note: Use quotes for text values. Only columns with values will be updated.</em>
                            </small>
                        </div>
                    `,
                    showCancelButton: true,
                    confirmButtonText: 'Next',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#667eea',
                    width: '600px',
                    preConfirm: () => {
                        const columnValuePairs = document.getElementById('column_value_pairs').value;
                        if (!columnValuePairs.trim()) {
                            Swal.showValidationMessage('Please enter at least one column-value pair');
                        }
                        return columnValuePairs;
                    },
                    didOpen: () => {
                        // Initialize column suggestions for the textarea
                        setTimeout(function() {
                            showColumnSuggestions('column_value_pairs', '');
                        }, 100);
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        let columnValuePairs = result.value;

                        // Parse and validate column-value pairs
                        let updates = {};
                        let lines = columnValuePairs.split('\n');
                        let hasError = false;
                        let errorMsg = '';
                        let skippedLines = [];

                        for (let line of lines) {
                            line = line.trim();
                            if (line === '') continue;

                            // Parse: column = value
                            let parts = line.split('=');
                            if (parts.length < 2) {
                                hasError = true;
                                errorMsg = `Invalid format in line: "${line}". Use: column = value`;
                                break;
                            }

                            let column = parts[0].trim();
                            let value = parts.slice(1).join('=').trim();

                            // Skip if column name is empty
                            if (!column) {
                                skippedLines.push(line);
                                continue;
                            }

                            // Skip if value is empty - don't update columns with empty values
                            if (value === '') {
                                toastr.info(`Skipping column "${column}" - empty value`);
                                continue;
                            }

                            // Validate column exists in table
                            if (!currentColumns.includes(column)) {
                                hasError = true;
                                errorMsg = `Column "${column}" does not exist in table. Available columns: ${currentColumns.join(', ')}`;
                                break;
                            }

                            updates[column] = value;
                        }

                        if (hasError) {
                            Swal.fire({
                                title: 'Invalid Input',
                                text: errorMsg,
                                icon: 'error',
                                confirmButtonColor: '#dc3545'
                            });
                            return;
                        }

                        if (Object.keys(updates).length === 0) {
                            Swal.fire({
                                title: 'No Updates',
                                text: 'Please enter at least one column-value pair',
                                icon: 'warning',
                                confirmButtonColor: '#ffc107'
                            });
                            return;
                        }

                        // Build display HTML for confirmation
                        let updatesHtml = '';
                        for (let [col, val] of Object.entries(updates)) {
                            updatesHtml += `<li><strong>${col}</strong> = ${val}</li>`;
                        }

                        // Step 2: Confirm update
                        Swal.fire({
                            title: 'Confirm Bulk Update',
                            html: `
                                <div style="text-align: left;">
                                    <p><strong>Table:</strong> ${tableName}</p>
                                    ${propertyId ? `<p><strong>Property ID:</strong> ${propertyId}</p>` : ''}
                                    <p><strong>WHERE:</strong> ${displayWhereClause}</p>
                                    <p><strong>Updates (${Object.keys(updates).length} columns):</strong></p>
                                    <ul style="margin-left: 20px;">${updatesHtml}</ul>
                                </div>
                            `,
                            icon: 'warning',
                            showCancelButton: true,
                            confirmButtonText: 'Yes, Update!',
                            cancelButtonText: 'Cancel',
                            confirmButtonColor: '#28a745',
                            cancelButtonColor: '#dc3545',
                            width: '600px'
                        }).then((confirmResult) => {
                            if (confirmResult.isConfirmed) {
                                bulkUpdateRecords(tableName, finalWhere, updates);
                            }
                        });
                    }
                });
            });

            // Insert Record Button
            $('#insert_record_btn').click(function() {
                let tableName = $('#table_select').val();
                let propertyId = $('#property_id').val();

                if (!tableName) {
                    toastr.warning('Please select a table');
                    return;
                }

                if (!propertyId) {
                    toastr.warning('Please enter Property ID');
                    return;
                }

                if (currentColumns.length === 0) {
                    toastr.warning('Please fetch data first to see available columns');
                    return;
                }

                // Build dynamic form HTML
                let formHtml = `
                    <div style="text-align: left; max-height: 500px; overflow-y: auto;">
                        <div style="margin-bottom: 15px;">
                            <p style="margin: 0;"><strong>Table:</strong> ${tableName}</p>
                            <p style="margin: 0;"><strong>Database Property ID:</strong> ${propertyId}</p>
                        </div>
                        <hr style="margin: 15px 0;">
                        <div id="insert_form_fields" style="display: flex; flex-direction: column; gap: 12px;">
                `;

                currentColumns.forEach(function(column) {
                    if (column.toLowerCase() === 'id') {
                        return; // Skip auto-increment id
                    }

                    formHtml += `
                        <div style="display: flex; flex-direction: column; gap: 5px;">
                            <label style="font-weight: 600; color: #495057; font-size: 13px;">
                                ${column}
                                <span style="font-size: 11px; color: #999; margin-left: 5px;">(optional)</span>
                            </label>
                            <input type="text" class="form-control insert-column-input" 
                                data-column="${column}" 
                                placeholder="Enter ${column}" 
                                style="font-size: 13px; padding: 8px 12px; border-radius: 4px;">
                        </div>
                    `;
                });

                formHtml += `
                        </div>
                    </div>
                `;

                Swal.fire({
                    title: `Insert New Record - ${tableName}`,
                    html: formHtml,
                    showCancelButton: true,
                    confirmButtonText: 'Insert Record',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#28a745',
                    cancelButtonColor: '#dc3545',
                    width: '550px',
                    preConfirm: () => {
                        let insertData = {};

                        // Collect all input values
                        $('.insert-column-input').each(function() {
                            let column = $(this).data('column');
                            let value = $(this).val().trim();

                            // Only add if value is not empty
                            if (value !== '') {
                                insertData[column] = value;
                            }
                        });

                        // Check if at least one field is filled
                        if (Object.keys(insertData).length === 0) {
                            Swal.showValidationMessage('Please enter at least one value');
                        }

                        return insertData;
                    }
                }).then((result) => {
                    if (result.isConfirmed) {
                        let insertData = result.value;

                        // Show confirmation with values entered
                        let confirmHtml = `
                            <div style="text-align: left;">
                                <p><strong>Table:</strong> ${tableName}</p>
                                <p><strong>Database Property ID:</strong> ${propertyId}</p>
                                <hr style="margin: 10px 0;">
                                <p style="font-weight: bold; margin-bottom: 10px;">Data to Insert:</p>
                                <ul style="margin: 0; padding-left: 20px;">
                        `;

                        for (let [col, val] of Object.entries(insertData)) {
                            confirmHtml += `<li><strong>${col}:</strong> ${val}</li>`;
                        }

                        confirmHtml += `</ul></div>`;

                        Swal.fire({
                            title: 'Confirm Insert',
                            html: confirmHtml,
                            icon: 'question',
                            showCancelButton: true,
                            confirmButtonText: 'Yes, Insert!',
                            cancelButtonText: 'Cancel',
                            confirmButtonColor: '#28a745',
                            width: '500px'
                        }).then((confirmResult) => {
                            if (confirmResult.isConfirmed) {
                                insertRecord(tableName, propertyId, insertData);
                            }
                        });
                    }
                });
            });

            function insertRecord(tableName, propertyId, insertData) {
                $.ajax({
                    url: "{{ route('insert_record') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        table_name: tableName,
                        property_id: propertyId,
                        insert_data: JSON.stringify(insertData)
                    },
                    success: function(response) {
                        if (response.status) {
                            Swal.fire({
                                title: 'Success!',
                                html: `<p>${response.message}</p>`,
                                icon: 'success',
                                confirmButtonColor: '#667eea'
                            });
                            toastr.success(response.message);
                            $('#fetch_data_btn').click(); // Refresh data
                        } else {
                            Swal.fire({
                                title: 'Error!',
                                text: response.message,
                                icon: 'error',
                                confirmButtonColor: '#dc3545'
                            });
                            toastr.error(response.message);
                        }
                    },
                    error: function(xhr) {
                        Swal.fire({
                            title: 'Error!',
                            text: 'Insert failed',
                            icon: 'error',
                            confirmButtonColor: '#dc3545'
                        });
                        toastr.error('Insert failed');
                    }
                });
            }

            function bulkUpdateRecords(tableName, sqlWhere, updates) {
                let finalWhereClause = sqlWhere;

                $.ajax({
                    url: "{{ route('bulk_update_records') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        table_name: tableName,
                        sql_where: finalWhereClause,
                        updates: JSON.stringify(updates),
                        property_id: $('#property_id').val().trim(),
                    },
                    success: function(response) {
                        if (response.status) {
                            Swal.fire({
                                title: 'Success!',
                                html: `<p>${response.message}</p><p><strong>Affected Rows:</strong> ${response.affected_rows}</p>`,
                                icon: 'success',
                                confirmButtonColor: '#667eea'
                            });
                            toastr.success(response.message + ' (' + response.affected_rows + ' rows)');
                            $('#fetch_data_btn').click(); // Refresh data
                        } else {
                            Swal.fire({
                                title: 'Error!',
                                text: response.message,
                                icon: 'error',
                                confirmButtonColor: '#dc3545'
                            });
                            toastr.error(response.message);
                        }
                    },
                    error: function(xhr) {
                        Swal.fire({
                            title: 'Error!',
                            text: 'Bulk update failed',
                            icon: 'error',
                            confirmButtonColor: '#dc3545'
                        });
                        toastr.error('Bulk update failed');
                    }
                });
            }

            function fetchTableData(tableName, propertyId, sqlWhere, selectColumns, orderBy, groupBy, betweenClause) {
                // Prevent multiple simultaneous calls
                if (isLoading) {
                    toastr.warning('Please wait, data is loading...');
                    return;
                }

                isLoading = true;
                lastFetchId++; // Increment fetch ID for this request
                let currentFetchId = lastFetchId;

                // Abort any pending XHR from previous fetches
                if (pendingXhr) {
                    pendingXhr.abort();
                    pendingXhr = null;
                }

                let xhrRequest = $.ajax({
                    url: "{{ route('fetch_table_data') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        table_name: tableName,
                        property_id: propertyId,
                        sql_where: sqlWhere,
                        select_columns: selectColumns,
                        order_by: orderBy,
                        group_by: groupBy,
                        between_clause: betweenClause
                    },
                    beforeSend: function(xhrObj) {
                        pendingXhr = xhrObj; // Store XHR for potential abort
                        $('#fetch_data_btn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Loading...');
                        toastr.info('Loading data...');
                    },
                    success: function(response) {
                        // Ignore response if this is no longer the latest fetch
                        if (currentFetchId !== lastFetchId) {
                            console.log('Ignoring stale fetch response (ID: ' + currentFetchId + ', latest: ' + lastFetchId + ')');
                            return;
                        }
                        lastValidFetchId = currentFetchId;
                        if (response.status) {
                            currentTableName = tableName;
                            currentColumns = response.columns;
                            lastRequestedParams = {
                                tableName: tableName,
                                propertyId: propertyId,
                                sqlWhere: sqlWhere || '',
                                orderBy: orderBy || '',
                                groupBy: groupBy || '',
                                betweenClause: betweenClause || ''
                            };

                            // Display available columns
                            displayAvailableColumns(response.columns);

                            // Show advanced search card
                            $('#advanced_search_card').show();

                            // Try to find primary key
                            // This tool uses only the id column for row operations
                            if (!response.columns.includes('id')) {
                                toastr.error('This table does not have an id column. Update/Delete is not available.');
                                return;
                            }

                            primaryKey = 'id';

                            // Check if filtering is required
                            if (response.requiresFilter) {
                                toastr.error(response.message);
                                $('#sql_mode').prop('checked', true).trigger('change');
                                $('#sql_where').focus();
                                return;
                            }

                            // Check if server-side pagination is forced due to large dataset
                            if (response.forceServerSide === true) {
                                // Large dataset detected - use server-side pagination
                                renderDataTableServerSide(response.columns, tableName, propertyId, sqlWhere, orderBy, groupBy, betweenClause);
                                toastr.warning(`Large dataset (${response.recordsTotal} records). Using optimized server-side pagination.`);
                            } else if (response.isLargeDataset === true || (response.recordsTotal && response.recordsTotal > 500)) {
                                // Still large but manageable - render normally but keep pagination
                                renderDataTable(response.columns, response.data);
                                toastr.success(`Data loaded (${response.recordsTotal || response.data.length} records) - Use search/filter for optimization.`);
                            } else {
                                // Small dataset - render normally
                                renderDataTable(response.columns, response.data);
                                toastr.success(`Data loaded successfully (${response.data.length} records)`);
                            }
                        } else {
                            toastr.error(response.message || 'Error loading data');
                        }
                    },
                    error: function(xhrObj) {
                        // Ignore errors from stale requests
                        if (currentFetchId !== lastFetchId) {
                            console.log('Ignoring stale fetch error (ID: ' + currentFetchId + ')');
                            return;
                        }
                        // Only show error if request wasn't aborted
                        if (xhrObj.statusText !== 'abort') {
                            console.error('Error response:', xhrObj);
                            toastr.error('Error loading data');
                        }
                    },
                    complete: function() {
                        // Clear pending XHR reference
                        if (pendingXhr === xhrRequest) {
                            pendingXhr = null;
                        }
                        isLoading = false;
                        $('#fetch_data_btn').prop('disabled', false).html('<i class="fa fa-search"></i> Fetch Data');
                    }
                });
            }

            function displayAvailableColumns(columns) {
                // Show columns info card
                $('#columns_info_card').show();

                // Clear previous content
                $('#available_columns_display').empty();

                // Display each column as a badge
                columns.forEach(function(column) {
                    let badge = `<span class="badge badge-primary" style="font-size: 12px; padding: 6px 10px; cursor: pointer;" 
                                      title="Click to copy: ${column}" 
                                      onclick="copyToClipboard('${column}')">${column}</span>`;
                    $('#available_columns_display').append(badge);
                });
            }

            function copyToClipboard(text) {
                // Create temporary input element
                let tempInput = document.createElement('input');
                tempInput.value = text;
                document.body.appendChild(tempInput);
                tempInput.select();
                document.execCommand('copy');
                document.body.removeChild(tempInput);

                toastr.success(`Column name "${text}" copied to clipboard!`);
            }

            function renderDataTableServerSide(columns, tableName, propertyId, sqlWhere, orderBy, groupBy, betweenClause) {
                // Prevent multiple simultaneous initializations
                if (isTableInitializing) {
                    console.log('Table initialization already in progress, skipping...');
                    return;
                }

                // Check if table already exists and is initialized
                if (currentTable && $.fn.DataTable.isDataTable('#data_table')) {
                    // If table already has the same parameters, just reload data.
                    if (
                        currentTableParams.tableName === tableName &&
                        currentTableParams.propertyId === propertyId &&
                        currentTableParams.sqlWhere === (sqlWhere || '') &&
                        currentTableParams.orderBy === (orderBy || '') &&
                        currentTableParams.groupBy === (groupBy || '') &&
                        currentTableParams.betweenClause === (betweenClause || '')
                    ) {
                        console.log('Same query parameters detected, reloading existing table data.');
                        currentTable.ajax.reload();
                        isTableInitializing = false;
                        return;
                    }

                    console.log('Query parameters changed, destroying existing DataTable.');
                    try {
                        currentTable.destroy();
                    } catch (e) {
                        console.log('Destroy error when switching query:', e);
                    }
                    currentTable = null;
                }

                isTableInitializing = true;
                console.log('Starting table initialization...');

                // Destroy existing if somehow it exists but is broken
                if (currentTable) {
                    try {
                        currentTable.destroy();
                    } catch (e) {
                        console.log('Destroy error:', e);
                    }
                }

                // Ensure table element exists
                let tableElement = $('#data_table');
                if (!tableElement.length) {
                    console.error('Table element #data_table not found in DOM');
                    isTableInitializing = false;
                    toastr.error('Table element not found in page');
                    return;
                }

                tableElement.empty();

                // Create table structure with proper thead and tbody
                let tableHtml = '<thead>';
                tableHtml += '<tr class="header-row">';
                tableHtml += '<th>Select</th>'; // Actions/Select column first
                columns.forEach(function(column) {
                    tableHtml += `<th>${column}</th>`;
                });
                tableHtml += '</tr>';
                tableHtml += '</thead><tbody></tbody>';

                tableElement.html(tableHtml);

                // Initialize DataTable with server-side processing
                try {
                    currentTable = tableElement.DataTable({
                        "processing": true,
                        "serverSide": true,
                        "pageLength": 25, // REDUCED for memory safety
                        "lengthMenu": [
                            [10, 25, 50],
                            [10, 25, 50]
                        ], // Smaller options
                        "ajax": {
                            "url": "{{ route('fetch_table_data') }}",
                            "type": "POST",
                            "data": function(d) {
                                return {
                                    _token: "{{ csrf_token() }}",
                                    table_name: tableName,
                                    property_id: propertyId,
                                    sql_where: sqlWhere,
                                    select_columns: null,
                                    order_by: orderBy,
                                    group_by: groupBy,
                                    between_clause: betweenClause,
                                    start: d.start,
                                    length: d.length,
                                    search: d.search.value,
                                    order_column: columns[d.order[0].column] || primaryKey,
                                    order_dir: d.order[0].dir
                                };
                            },
                            "dataSrc": function(json) {
                                return json.data;
                            },
                            "error": function(xhr, status, error) {
                                console.error('Server-side data loading error:', error);
                                toastr.error('Error loading table data');
                            }
                        },
                        "columns": [{
                            "data": null,
                            "orderable": false,
                            "render": function(data, type, row) {
                                if (multiDeleteMode) {
                                    return `<div class="action-cell-multi"><input type="checkbox" class="row-checkbox multi-delete-checkbox" data-pk="${row[primaryKey]}" title="Select for deletion"></div>`;
                                } else {
                                    return `<div class="action-cell"><i class="fa fa-trash delete-btn" data-pk="${row[primaryKey]}" title="Delete Record"></i></div>`;
                                }
                            }
                        }].concat(columns.map(function(col) {
                            return {
                                "data": col,
                                "render": function(data, type, row) {
                                    let value = data !== null && data !== undefined ? data : '';
                                    return `<div class="editable-cell" data-column="${col}" data-pk="${row[primaryKey]}">${value}</div>`;
                                }
                            };
                        })),
                        "ordering": true,
                        "searching": true,
                        "scrollX": false,
                        "autoWidth": true,
                        "deferRender": false,
                        "stateSave": false,
                        "language": {
                            "processing": "Loading data...",
                            "emptyTable": "No data available",
                            "info": "Showing _START_ to _END_ of _TOTAL_ records",
                            "infoEmpty": "Showing 0 to 0 of 0 records",
                            "infoFiltered": "(filtered from _MAX_ total records)",
                            "lengthMenu": "Show _MENU_ records per page",
                            "search": "Search:",
                            "paginate": {
                                "first": "First",
                                "last": "Last",
                                "next": "Next",
                                "previous": "Previous"
                            }
                        },
                        "drawCallback": function() {
                            // Reattach events after each draw
                            attachEditEvents();
                            attachDeleteEvents();
                            refreshMultiDeleteUI();
                        },
                        "initComplete": function() {
                            console.log('Table initialization complete');
                            isTableInitializing = false;
                            // Update currentTableParams now that table is initialized
                            currentTableParams = {
                                tableName: tableName,
                                propertyId: propertyId,
                                sqlWhere: sqlWhere || '',
                                orderBy: orderBy || '',
                                groupBy: groupBy || '',
                                betweenClause: betweenClause || ''
                            };
                            // Show multi-delete button after table initialization
                            if (currentTableName) {
                                $('#toggle_multi_delete_btn').show();
                            }
                        }
                    });

                    console.log('Table initialized successfully');

                    // Show toggle multi-delete button
                    if (currentTableName) {
                        $('#toggle_multi_delete_btn').show();
                    }

                } catch (error) {
                    console.error('Table initialization error:', error);
                    isTableInitializing = false;
                    toastr.error('Error initializing table: ' + error.message);
                }
            }

            function renderDataTable(columns, data) {
                // Reset initialization flag
                isTableInitializing = false;

                // Destroy existing datatable
                if (currentTable) {
                    currentTable.destroy();
                    $('#data_table').empty();
                }

                // Create table structure with proper thead and tbody
                let tableHtml = '<thead>';

                // Create table headers - Header Row only (no filter row)
                tableHtml += '<tr class="header-row">';
                tableHtml += '<th>Select</th>'; // Actions/Select column first
                columns.forEach(function(column) {
                    tableHtml += `<th>${column}</th>`;
                });
                tableHtml += '</tr>';
                tableHtml += '</thead>';

                // Create table body
                tableHtml += '<tbody>';

                if (data.length > 0) {
                    data.forEach(function(row) {
                        tableHtml += '<tr>';

                        // Render action cell FIRST based on mode
                        if (multiDeleteMode) {
                            tableHtml += `<td class="action-cell-multi"><input type="checkbox" class="row-checkbox multi-delete-checkbox" data-pk="${row[primaryKey]}" title="Select for deletion"></td>`;
                        } else {
                            tableHtml += `
                                    <td class="action-cell">
                                        <i class="fa fa-trash delete-btn" data-pk="${row[primaryKey]}" title="Delete Record"></i>
                                        <i class="fa fa-copy copy-row-btn" data-pk="${row[primaryKey]}" title="Copy Row"
                                            style="margin-left: 10px; cursor: pointer; color: #007bff;"></i>
                                    </td>`;
                        }

                        // Then add data columns
                        columns.forEach(function(column) {
                            let value = row[column] !== null && row[column] !== undefined ? row[column] : '';
                            tableHtml += `<td class="editable-cell" data-column="${column}" data-pk="${row[primaryKey]}">${value}</td>`;
                        });

                        tableHtml += '</tr>';
                    });
                }

                tableHtml += '</tbody>';

                $('#data_table').html(tableHtml);

                // Initialize DataTable for smaller datasets - with better memory management
                currentTable = $('#data_table').DataTable({
                    "pageLength": 25, // REDUCED for memory safety
                    "ordering": true,
                    "searching": true,
                    "scrollX": false,
                    "autoWidth": true,
                    "destroy": true,
                    "deferRender": true,
                    "processing": false,
                    "lengthChange": true,
                    "lengthMenu": [
                        [10, 25, 50, 100],
                        [10, 25, 50, 100]
                    ], // Smaller options for safety
                    "dom": '<"top"lf>rt<"bottom"ip><"clear">',
                    "language": {
                        "emptyTable": "No data available",
                        "info": "Showing _START_ to _END_ of _TOTAL_ records",
                        "infoEmpty": "Showing 0 to 0 of 0 records",
                        "infoFiltered": "(filtered from _MAX_ total records)",
                        "lengthMenu": "Show _MENU_ records per page",
                        "search": "Search:",
                        "paginate": {
                            "first": "First",
                            "last": "Last",
                            "next": "Next",
                            "previous": "Previous"
                        }
                    },
                    "drawCallback": function() {
                        // Reattach events after each draw (important for column re-rendering)
                        attachEditEvents();
                        attachDeleteEvents();
                    }
                });

                // Show toggle multi-delete button
                if (currentTableName) {
                    $('#toggle_multi_delete_btn').show();
                }

                // Attach click events for inline editing
                attachEditEvents();
                attachDeleteEvents();
            }

            function addSearchCondition() {
                if (currentColumns.length === 0) {
                    toastr.warning('Please fetch table data first');
                    return;
                }

                // Filter out property_id from columns (case insensitive: propertyid, property_id, Property_ID, etc.)
                let filteredColumns = currentColumns.filter(col =>
                    col.toLowerCase() !== 'propertyid' &&
                    col.toLowerCase() !== 'property_id'
                );

                let conditionIndex = Date.now(); // Use timestamp for unique ID
                let conditionHtml = `
                    <div class="search-condition-row" data-index="${conditionIndex}">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <label>Column:</label>
                                <select class="form-control search-column">
                                    <option value="">-- Select Column --</option>
                                    ${filteredColumns.map(col => `<option value="${col}">${col}</option>`).join('')}
                                </select>
                            </div>
                            <div class="col-md-1">
                                <label>Operator:</label>
                                <select class="form-control search-operator">
                                    <option value="=">=</option>
                                    <option value="LIKE">LIKE</option>
                                    <option value="!=">!=</option>
                                    <option value=">">></option>
                                    <option value="<"><</option>
                                    <option value=">=">>=</option>
                                    <option value="<="><=</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>Value:</label>
                                <input type="text" class="form-control search-value" placeholder="Enter value">
                            </div>
                            <div class="col-md-2">
                                <label>Condition:</label>
                                <select class="form-control search-logic">
                                    <option value="AND">AND</option>
                                    <option value="OR">OR</option>
                                </select>
                            </div>
                            <div class="col-md-1">
                                <label>&nbsp;</label><br>
                                <i class="fa fa-times-circle remove-condition" data-index="${conditionIndex}" title="Remove" style="cursor: pointer; color: #dc3545; font-size: 20px;"></i>
                            </div>
                        </div>
                    </div>
                `;

                $('#search_conditions_container').append(conditionHtml);

                // Attach remove event with proper scoping
                $(`#search_conditions_container`).off('click', `.remove-condition[data-index="${conditionIndex}"]`);
                $(`#search_conditions_container`).on('click', `.remove-condition[data-index="${conditionIndex}"]`, function() {
                    $(this).closest('.search-condition-row').remove();
                    toastr.info('Search condition removed');
                });
            }

            function executeAdvancedSearch() {
                if (!currentTableName) {
                    toastr.warning('Please select a table first');
                    return;
                }

                // Collect all search conditions
                let conditions = [];
                $('.search-condition-row').each(function() {
                    let column = $(this).find('.search-column').val();
                    let operator = $(this).find('.search-operator').val();
                    let value = $(this).find('.search-value').val();
                    let logic = $(this).find('.search-logic').val();

                    if (column && value) {
                        conditions.push({
                            column: column,
                            operator: operator,
                            value: value,
                            logic: logic
                        });
                    }
                });

                if (conditions.length === 0) {
                    toastr.warning('Please add at least one search condition');
                    return;
                }

                // Build WHERE clause
                let whereClause = '';

                conditions.forEach(function(cond, index) {
                    if (whereClause !== '' || index > 0) {
                        whereClause += ` ${cond.logic} `;
                    }

                    if (cond.operator === 'LIKE') {
                        whereClause += `${cond.column} LIKE '%${cond.value}%'`;
                    } else {
                        whereClause += `${cond.column} ${cond.operator} '${cond.value}'`;
                    }
                });

                // Fetch data with WHERE clause
                fetchTableData(
                    currentTableName,
                    $('#property_id').val(),
                    whereClause
                );
            }

            function attachEditEvents() {
                $('.editable-cell').off('click').on('click', function() {
                    let cell = $(this);
                    if (cell.hasClass('editing')) {
                        return;
                    }

                    let currentValue = cell.text();
                    let columnName = cell.data('column');
                    let pkValue = cell.data('pk');

                    // Create input field
                    let input = $('<input type="text" class="form-control form-control-sm">');
                    input.val(currentValue);

                    cell.addClass('editing');
                    cell.html(input);
                    input.focus();

                    // Handle blur (when user clicks away)
                    input.on('blur', function() {
                        let newValue = input.val();
                        updateCell(cell, columnName, newValue, pkValue, currentValue);
                    });

                    // Handle Enter key
                    input.on('keypress', function(e) {
                        if (e.which === 13) {
                            let newValue = input.val();
                            updateCell(cell, columnName, newValue, pkValue, currentValue);
                        }
                    });
                });
            }

            function openCopyRowModal(rowData) {
                let formHtml = `
                    <div style="text-align: left; max-height: 500px; overflow-y: auto;">
                        <div id="copy_row_fields"
                            style="display: flex; flex-direction: column; gap: 12px;">
                `;

                currentColumns.forEach(function(column, index) {

                    const columnLower = String(column).toLowerCase();

                    // Skip columns that should never be copied
                    if (
                        columnLower === 'id' ||
                        columnLower === 'created_at' ||
                        columnLower === 'updated_at'
                    ) {
                        return;
                    }

                    // +1 because rowData[0] is the Action column
                    const value = rowData[index + 1] ?? '';

                    // Escape HTML safely
                    const escapedColumn = String(column)
                        .replace(/&/g, '&amp;')
                        .replace(/</g, '&lt;')
                        .replace(/>/g, '&gt;')
                        .replace(/"/g, '&quot;')
                        .replace(/'/g, '&#039;');

                    const escapedValue = String(value)
                        .replace(/&/g, '&amp;')
                        .replace(/</g, '&lt;')
                        .replace(/>/g, '&gt;')
                        .replace(/"/g, '&quot;')
                        .replace(/'/g, '&#039;');

                    formHtml += `
                            <div style="display: flex; flex-direction: column; gap: 5px;">

                                <label
                                    for="copy_${escapedColumn}"
                                    style="
                                        font-weight: 600;
                                        color: #495057;
                                        font-size: 13px;
                                    ">
                                    ${escapedColumn}
                                </label>

                                <input
                                    type="text"
                                    class="form-control copy-row-input"
                                    name="${escapedColumn}"
                                    id="copy_${escapedColumn}"
                                    data-column="${escapedColumn}"
                                    value="${escapedValue}"
                                    placeholder="${escapedColumn}"
                                    autocomplete="off"
                                    style="
                                        font-size: 13px;
                                        padding: 8px 12px;
                                        border-radius: 4px;
                                    "
                                >

                            </div>
                        `;
                });

                formHtml += `
                            </div>
                        </div>
                    `;

                Swal.fire({
                    title: 'Copy Row',
                    html: formHtml,
                    showCancelButton: true,
                    confirmButtonText: 'Copy & Insert',
                    cancelButtonText: 'Cancel',
                    confirmButtonColor: '#28a745',
                    cancelButtonColor: '#dc3545',
                    width: '600px',

                    preConfirm: () => {
                        let insertData = {};

                        $('.copy-row-input').each(function() {
                            let column = $(this).data('column');
                            let value = $(this).val();

                            if (value !== '') {
                                insertData[column] = value;
                            }
                        });

                        if (Object.keys(insertData).length === 0) {
                            Swal.showValidationMessage('Please enter at least one value');
                            return false;
                        }

                        return insertData;
                    }

                }).then((result) => {
                    if (result.isConfirmed) {

                        let tableName = currentTableName;
                        let propertyId = $('#property_id').val().trim();
                        let insertData = result.value;

                        insertRecord(
                            tableName,
                            propertyId,
                            insertData
                        );
                    }
                });
            }

            function updateCell(cell, columnName, newValue, pkValue, oldValue) {
                if (newValue === oldValue) {
                    cell.removeClass('editing');
                    cell.html(oldValue);
                    return;
                }

                $.ajax({
                    url: "{{ route('update_table_cell') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        table_name: currentTableName,
                        column_name: columnName,
                        property_id: $('#property_id').val().trim(),
                        value: newValue,
                        primary_key: primaryKey,
                        primary_key_value: pkValue
                    },
                    success: function(response) {
                        if (response.status) {
                            cell.removeClass('editing');
                            cell.html(newValue);
                            toastr.success('Updated successfully');
                        } else {
                            cell.removeClass('editing');
                            cell.html(oldValue);
                            toastr.error(response.message);
                        }
                    },
                    error: function(xhr) {
                        cell.removeClass('editing');
                        cell.html(oldValue);
                        toastr.error('Update failed');
                    }
                });
            }

            function attachDeleteEvents() {
                // Handle single row delete (only in non-multi-delete mode)
                $('.delete-btn').off('click').on('click', function(e) {
                    e.stopPropagation(); // Prevent row click handler from firing

                    let pkValue = $(this).data('pk');
                    let row = $(this).closest('tr');

                    // Highlight the row
                    if (highlightedRow) {
                        highlightedRow.removeClass('row-highlighted');
                    }
                    row.addClass('row-highlighted');
                    highlightedRow = row;

                    // Scroll to the highlighted row
                    row[0].scrollIntoView({
                        behavior: 'smooth',
                        block: 'center'
                    });

                    Swal.fire({
                        title: 'Are you sure?',
                        text: "You won't be able to revert this!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#dc3545',
                        cancelButtonColor: '#6c757d',
                        confirmButtonText: 'Yes, delete it!',
                        cancelButtonText: 'Cancel'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            $.ajax({
                                url: "{{ route('delete_table_record') }}",
                                type: 'POST',
                                data: {
                                    _token: "{{ csrf_token() }}",
                                    table_name: currentTableName,
                                    property_id: $('#property_id').val().trim(),
                                    primary_key_value: pkValue
                                },
                                success: function(response) {
                                    if (response.status) {
                                        currentTable.row(row).remove().draw();
                                        row.removeClass('row-highlighted');
                                        highlightedRow = null;
                                        Swal.fire({
                                            title: 'Deleted!',
                                            text: 'Record has been deleted.',
                                            icon: 'success',
                                            timer: 2000,
                                            showConfirmButton: false
                                        });
                                        toastr.success('Record deleted successfully');
                                    } else {
                                        row.removeClass('row-highlighted');
                                        highlightedRow = null;
                                        toastr.error(response.message);
                                    }
                                },
                                error: function(xhr) {
                                    row.removeClass('row-highlighted');
                                    highlightedRow = null;
                                    toastr.error('Delete failed');
                                }
                            });
                        } else {
                            row.removeClass('row-highlighted');
                            highlightedRow = null;
                        }
                    });
                });

                // Handle multi-delete checkboxes
                $('.row-checkbox').off('change').on('change', function() {
                    let pkValue = $(this).data('pk');
                    let row = $(this).closest('tr');

                    if ($(this).is(':checked')) {
                        selectedRows.add(pkValue);
                        row.addClass('row-selected');
                    } else {
                        selectedRows.delete(pkValue);
                        row.removeClass('row-selected');
                    }

                    // Update selected count
                    $('#selected_count').text(selectedRows.size);
                });

                // Handle row click for multi-select (only when multi-delete mode is ON)
                $('#data_table tbody tr').off('click').on('click', function(e) {
                    // Only toggle checkbox if in multi-delete mode and not clicking on checkbox, delete button, or editable cell
                    if (multiDeleteMode &&
                        !$(e.target).closest('.row-checkbox').length &&
                        !$(e.target).closest('.delete-btn').length &&
                        !$(e.target).hasClass('editable-cell')) {

                        let checkbox = $(this).find('.row-checkbox');
                        if (checkbox.length > 0) {
                            checkbox.prop('checked', !checkbox.prop('checked')).change();
                        }
                    }
                });
            }

            $(document).off('click', '.copy-row-btn').on('click', '.copy-row-btn', function(e) {
                e.stopPropagation();

                let row = $(this).closest('tr');

                if (!currentTable) {
                    toastr.error('Table is not available');
                    return;
                }

                let rowData = currentTable.row(row).data();

                if (!rowData) {
                    toastr.error('Unable to read row data');
                    return;
                }

                openCopyRowModal(rowData);
            });

            function deleteMultipleRecords() {
                if (selectedRows.size === 0) {
                    toastr.warning('Please select at least one row to delete');
                    return;
                }

                // Convert Set to Array
                let pkValues = Array.from(selectedRows);

                $.ajax({
                    url: "{{ route('delete_multiple_records') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        table_name: currentTableName,
                        property_id: $('#property_id').val().trim(),
                        primary_key_values: JSON.stringify(pkValues)
                    },
                    beforeSend: function() {
                        $('#delete_selected_btn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Deleting...');
                    },
                    success: function(response) {
                        if (response.status) {
                            // Remove deleted rows from the table
                            pkValues.forEach(function(pk) {
                                let row = $(`tbody tr`).filter(function() {
                                    return $(this).find('[data-pk="' + pk + '"]').length > 0;
                                });
                                if (currentTable) {
                                    currentTable.row(row).remove();
                                }
                            });

                            if (currentTable) {
                                currentTable.draw();
                            }

                            // Clear selection
                            selectedRows.clear();
                            $('#selected_count').text('0');
                            $('#delete_selected_btn').prop('disabled', false).html('<i class="fa fa-trash"></i> Delete Selected (<span id="selected_count">0</span>)');

                            Swal.fire({
                                title: 'Success!',
                                html: `<p>${response.message}</p><p><strong>Deleted Records:</strong> ${response.deleted_count}</p>`,
                                icon: 'success',
                                confirmButtonColor: '#667eea'
                            });
                            toastr.success(response.message);
                        } else {
                            $('#delete_selected_btn').prop('disabled', false).html('<i class="fa fa-trash"></i> Delete Selected (<span id="selected_count">' + selectedRows.size + '</span>)');
                            Swal.fire({
                                title: 'Error!',
                                text: response.message,
                                icon: 'error',
                                confirmButtonColor: '#dc3545'
                            });
                            toastr.error(response.message);
                        }
                    },
                    error: function(xhr) {
                        $('#delete_selected_btn').prop('disabled', false).html('<i class="fa fa-trash"></i> Delete Selected (<span id="selected_count">' + selectedRows.size + '</span>)');
                        Swal.fire({
                            title: 'Error!',
                            text: 'Failed to delete records',
                            icon: 'error',
                            confirmButtonColor: '#dc3545'
                        });
                        toastr.error('Failed to delete records');
                    }
                });
            }
        });
    </script>
@endsection

@extends('property.layouts.main')
@section('main-container')
    <link rel="stylesheet" href="https://cdn.datatables.net/2.2.1/css/dataTables.dataTables.css">
    <div class="content-body">

        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="form" action="{{ url('paytypemasterstore') }}" name="paytypemasterform"
                                id="paytypemasterform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="name">Payment Name</label>
                                        <input type="text" name="name" id="name" class="form-control" required>
                                        <div id="namelist"></div>
                                        <span id="name_error" class="text-danger"></span>
                                        @error('name')
                                            <span class="text-danger"> {{ $message }} </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ac_code">Ledger Account Name</label>
                                        <select id="ac_code" name="ac_code" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($ledgerdata as $list)
                                                <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="ac_posting">AC Posting</label>
                                        <select id="ac_posting" name="ac_posting" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Detailed">Detailed</option>
                                            <option value="Summarized">Summarized</option>
                                        </select>
                                    </div>

                                    <div class="col-md-6">
                                        <label class="col-form-label" for="nature">Nature</label>
                                        <select id="nature" name="nature" class="form-control">
                                            <option value="">Select</option>
                                            <option value="Cash">Cash</option>
                                            <option value="Cheque">Cheque</option>
                                            <option value="Complementary">Complementary</option>
                                            <option value="Company">Company</option>
                                            <option value="Cash Card">Cash Card</option>
                                            <option value="Credit Card">Credit Card</option>
                                            <option value="Hold">Hold</option>
                                            <option value="Member">Member</option>
                                            <option value="Other">Other</option>
                                            <option value="Room">Room</option>
                                            <option value="Staff">Staff</option>
                                            <option value="UPI">UPI</option>
                                            <option value="Void">Void</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="col-7 mt-4 ml-auto">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">Submit <i
                                            class="fa-solid fa-file-export"></i></button>
                                </div>
                            </form>

                            <div class="d-flex gap-2 px-1 pb-2 pt-1">
                                <button type="button"
                                    onclick="window.location.href='{{ route('paymaster.export') }}'"
                                    class="btn btn-success btn-sm">Excel</button>
                                <button type="button"
                                    onclick="window.open('{{ route('printpaymaster') }}','_blank')"
                                    class="btn btn-info btn-sm text-white">Print</button>
                            </div>

                            <div class="table-responsive">
                                <table id="revmast"
                                    class="table table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sn.</th>
                                            <th>Name</th>
                                            <th>Ac. Name</th>
                                            <th>AC Posting</th>
                                            <th>Nature</th>
                                            <th>Action</th>
                                            <th class="none">code</th>
                                            <th class="none">code</th>
                                            <th class="none">rev_code</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $sn }}</td>
                                                <td id="tdname_{{ $sn }}">{{ $row->name }}</td>
                                                <td>{{ $row->subname }}</td>
                                                <td>{{ $row->ac_posting }}</td>
                                                <td>{{ $row->nature }}</td>
                                                <td class="ins">
                                                    <button id="revedit" data-toggle="modal" data-target="#updateModal"
                                                        class="btn btn-success editBtn update-btn btn-sm">
                                                        <i class="fa-regular fa-pen-to-square"></i>Edit
                                                    </button>

                                                    <a
                                                        href="{{ url('deletepaytype/' . $row->id . '/' . $row->rev_code) }}">
                                                        <button class="btn btn-danger btn-sm delete-btn">
                                                            <i class="fa-solid fa-trash"></i> Delete
                                                        </button>
                                                    </a>

                                                </td>
                                                <td class="none">{{ $row->id }}</td>
                                                <td class="none">{{ $row->ac_code }}</td>
                                                <td id="rev_code_original" class="none">{{ $row->rev_code }}</td>
                                            </tr>
                                            @php $sn++; @endphp
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->

    {{-- ══════════════════ Edit / Update Modal ══════════════════ --}}
    <div class="modal fade bd-example-modal-lg" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Pay Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" action="{{ url('paymaststoreupdate') }}"
                        name="paytypeupdateform" id="paytypeupdateform">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <label class="col-form-label" for="updatename">Payment Name</label>
                                <input type="text" name="updatename" id="updatename" class="form-control" required>
                                <input type="hidden" name="updatecode" id="updatecode" class="form-control" required>
                                <input type="hidden" name="revcodeup" id="revcodeup" class="form-control" required>
                                <div id="namelist"></div>
                                <span id="name_error" class="text-danger"></span>
                                @error('updatename')
                                    <span class="text-danger"> {{ $message }} </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="col-form-label" for="upac_code">Ledger Account Name</label>
                                <select id="upac_code" name="upac_code" class="form-control">
                                    <option value="">Select</option>
                                    @foreach ($ledgerdata as $list)
                                        <option value="{{ $list->sub_code }}">{{ $list->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="col-form-label" for="upac_posting">AC Posting</label>
                                <select id="upac_posting" name="upac_posting" class="form-control">
                                    <option value="">Select</option>
                                    <option value="Detailed">Detailed</option>
                                    <option value="Summarized">Summarized</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="col-form-label" for="upnature">Nature</label>
                                <select id="upnature" name="upnature" class="form-control">
                                    <option value="">Select</option>
                                    <option value="Cash">Cash</option>
                                    <option value="Cheque">Cheque</option>
                                    <option value="Complementary">Complementary</option>
                                    <option value="Company">Company</option>
                                    <option value="Cash Card">Cash Card</option>
                                    <option value="Credit Card">Credit Card</option>
                                    <option value="Hold">Hold</option>
                                    <option value="Member">Member</option>
                                    <option value="Other">Other</option>
                                    <option value="Room">Room</option>
                                    <option value="Staff">Staff</option>
                                    <option value="UPI">UPI</option>
                                    <option value="Void">Void</option>
                                </select>
                            </div>
                        </div>

                        {{-- ══════════ MDR Rate Table – Edit Modal ══════════ --}}
                        <div id="editMdrSection" style="display:none;" class="mt-3">
                            <div class="card border-primary">
                                <div class="card-header bg-primary text-white py-2 d-flex justify-content-between align-items-center">
                                    <span><i class="fa-solid fa-percent me-1"></i> Bank Commission and Tax Structure History (MDR Rate)</span>
                                    <button type="button" class="btn btn-light btn-sm" id="addEditMdrRowBtn">
                                        <i class="fa-solid fa-plus"></i> Add Row
                                    </button>
                                </div>
                                <div class="card-body p-2">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-sm mb-0" id="editMdrTable">
                                            <thead class="bg-secondary text-white text-center">
                                                <tr>
                                                    <th>S.No</th>
                                                    <th>Tax Structure</th>
                                                    <th>Comm %</th>
                                                    <th>Bank Comm A/C</th>
                                                    <th>L. Limit</th>
                                                    <th>Comparison</th>
                                                    <th>U. Limit</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="editMdrTableBody">
                                                {{-- rows loaded dynamically --}}
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-right mt-2">
                                        <button type="button" id="saveMdrBtn" class="btn btn-success btn-sm">
                                            <i class="fa-solid fa-floppy-disk"></i> Save MDR Rates
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- ═══════════════════════════════════════════════════ --}}

                        <div id="hide5" class="alert mt-2 hide5 alert-info alert-dismissible fade show"
                            role="alert">Please wait to load the checkboxes
                        </div>

                        <div class="color-facebook bg-gallery pl-lg-5 mt-3 p-2">
                            <div class="col-md-8">
                                <div class="d-flex justify-content-between" id="loadcheckbox">
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <button id="updateBtn" type="submit" class="btn mt-3 btn-primary">Update <i
                                    class="fa-solid fa-file-export"></i></button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    {{-- ══════════════════════════════════════════════════════════ --}}


    <script>
        // ─── Ledger & TaxStru options for MDR dropdowns ───────────────────────────
        const ledgerOptions = [
            { value: '', text: 'Select' },
            @foreach ($ledgerdata as $list)
            { value: '{{ $list->sub_code }}', text: '{{ addslashes($list->name) }}' },
            @endforeach
        ];
        const taxstruOptions = [
            { value: '', text: 'Select' },
            @foreach ($taxstrudata as $list)
            { value: '{{ $list->str_code }}', text: '{{ addslashes($list->name) }}' },
            @endforeach
        ];

        // ─── Helper: build a select element from options array ────────────────────
        function buildSelect(options, selectedVal, cls) {
            let sel = `<select class="form-control form-control-sm ${cls}" style="min-width:130px;">`;
            options.forEach(o => {
                const selected = (o.value == selectedVal) ? 'selected' : '';
                sel += `<option value="${o.value}" ${selected}>${o.text}</option>`;
            });
            sel += '</select>';
            return sel;
        }

        // ─── Helper: build one MDR table row ──────────────────────────────────────
        function buildMdrRow(sno, row, prefix) {
            const taxStru    = row.tax_structure || '';
            const commPct    = row.comm_percent  != null ? row.comm_percent : '';
            const bankAc     = row.bank_comm_ac  || '';
            const lLimit     = row.l_limit       != null ? row.l_limit : '';
            const comparison = row.comparison    || '';
            const uLimit     = row.u_limit       != null ? row.u_limit : '';
            const dbId       = row.id            || 0;

            // Build tr as jQuery object so we can set select values properly
            const $tr = $(`<tr data-id="${dbId}">
                <td class="text-center align-middle">${sno}</td>
                <td>${buildSelect(taxstruOptions, taxStru, 'mdr-taxstru')}</td>
                <td><input type="number" step="0.0001" class="form-control form-control-sm" value="${commPct}" style="min-width:80px;"></td>
                <td>${buildSelect(ledgerOptions, bankAc, 'mdr-bankac')}</td>
                <td><input type="number" step="0.01" class="form-control form-control-sm" value="${lLimit}" style="min-width:90px;"></td>
                <td>
                    <select class="form-control form-control-sm mdr-comparison" style="min-width:100px;">
                        <option value="">Select</option>
                        <option value=">">&gt;</option>
                        <option value=">=">&gt;=</option>
                        <option value="<">&lt;</option>
                        <option value="<=">&lt;=</option>
                        <option value="=">=</option>
                        <option value="between">Between</option>
                    </select>
                </td>
                <td><input type="number" step="0.01" class="form-control form-control-sm" value="${uLimit}" style="min-width:90px;"></td>
                <td class="text-center align-middle">
                    <button type="button" class="btn btn-danger btn-sm removeMdrRow" data-prefix="${prefix}" data-id="${dbId}">
                        <i class="fa-solid fa-trash"></i>
                    </button>
                </td>
            </tr>`);

            // Set comparison select value after DOM creation
            if (comparison) {
                $tr.find('.mdr-comparison').val(comparison);
            }

            return $tr;
        }

        // ─── Helper: renumber SNO column ──────────────────────────────────────────
        function renumberMdr(tbodyId) {
            $(`#${tbodyId} tr`).each(function(i) {
                $(this).find('td:first').text(i + 1);
            });
        }

        // ─── Collect rows from a tbody into array ────────────────────────────────
        function collectMdrRows(tbodyId) {
            const rows = [];
            $(`#${tbodyId} tr`).each(function() {
                const tds = $(this).find('td');
                rows.push({
                    id:             $(this).data('id') || 0,
                    tax_structure:  tds.eq(1).find('select').val(),
                    comm_percent:   tds.eq(2).find('input').val(),
                    bank_comm_ac:   tds.eq(3).find('select').val(),
                    l_limit:        tds.eq(4).find('input').val(),
                    comparison:     $(this).find('.mdr-comparison').val(),
                    u_limit:        tds.eq(6).find('input').val(),
                });
            });
            return rows;
        }

        // ─── Toggle MDR section based on nature ───────────────────────────────────
        function toggleMdrSection(nature, sectionId) {
            const show = (nature === 'UPI' || nature === 'Credit Card');
            $(`#${sectionId}`).toggle(show);
        }

        // ─── Edit Modal: Nature change ────────────────────────────────────────────
        $('#upnature').on('change', function() {
            toggleMdrSection($(this).val(), 'editMdrSection');
        });

        // ─── Edit Modal: Add Row button ───────────────────────────────────────────
        $('#addEditMdrRowBtn').on('click', function() {
            const count = $('#editMdrTableBody tr').length + 1;
            $('#editMdrTableBody').append(buildMdrRow(count, {}, 'edit'));
        });

        // ─── Remove row (delegated – works for both tables) ───────────────────────
        $(document).on('click', '.removeMdrRow', function() {
            const dbId  = $(this).data('id');
            const pfix  = $(this).data('prefix');
            const $row  = $(this).closest('tr');
            const tbody = pfix === 'edit' ? 'editMdrTableBody' : 'mdrTableBody';

            if (dbId && dbId > 0) {
                // Row exists in DB – delete via AJAX
                if (!confirm('Delete this MDR rate?')) return;
                $.ajax({
                    url: '/mdrrate/delete/' + dbId,
                    type: 'DELETE',
                    headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
                    success: function(res) {
                        if (res.success) {
                            $row.remove();
                            renumberMdr(tbody);
                        } else {
                            alert(res.message);
                        }
                    }
                });
            } else {
                $row.remove();
                renumberMdr(tbody);
            }
        });

        // ─── Edit Modal: Save MDR Rates button ────────────────────────────────────
        $('#saveMdrBtn').on('click', function() {
            const revCode = $('#revcodeup').val();
            if (!revCode) {
                alert('Rev code not found. Please reload.');
                return;
            }
            const rows = collectMdrRows('editMdrTableBody');
            $.ajax({
                url: '{{ route('mdrrate.store') }}',
                type: 'POST',
                headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
                data: JSON.stringify({ rev_code: revCode, rows: rows }),
                contentType: 'application/json',
                success: function(res) {
                    if (res.success) {
                        alert(res.message);
                        loadEditMdrRates(revCode); // reload to get DB ids
                    } else {
                        alert(res.message);
                    }
                }
            });
        });

        // ─── Load MDR rates into Edit modal ───────────────────────────────────────
        function loadEditMdrRates(revCode) {
            $.get('/mdrrate/load/' + revCode, function(data) {
                $('#editMdrTableBody').empty();
                data.forEach(function(row, idx) {
                    $('#editMdrTableBody').append(buildMdrRow(idx + 1, row, 'edit'));
                });
            });
        }

        // ─── Unit Master Name autocomplete ────────────────────────────────────────
        document.addEventListener('DOMContentLoaded', function() {
            var name = document.getElementById('name');
            var namelist = document.getElementById('namelist');
            var currentLiIndex = -1;
            name.addEventListener('keydown', function(event) {
                if (event.key === 'ArrowDown') {
                    event.preventDefault();
                    var liElements = namelist.querySelectorAll('li');
                    currentLiIndex = (currentLiIndex + 1) % liElements.length;
                    if (liElements.length > 0) {
                        name.value = liElements[currentLiIndex].textContent;
                    }
                }
            });
            name.addEventListener('keyup', function() {
                var cid = this.value;
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '/getpaytypenames', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function() {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        namelist.innerHTML = xhr.responseText;
                        namelist.style.display = 'block';
                    }
                };
                xhr.send('cid=' + cid + '&_token=' + '{{ csrf_token() }}');
            });
            $(document).on('click', function(event) {
                if (!$(event.target).closest('li').length) {
                    namelist.style.display = 'none';
                }
            });
            $(document).on('click', '#namelist li', function() {
                $('#name').val($(this).text());
                namelist.style.display = 'none';
            });
        });

        $(document).ready(function() {

            $(".editBtn").click(function() {
                setTimeout(function() {
                    $(".hide5").alert('close');
                }, 5000);

                var name      = $(this).closest("tr").find("td:eq(1)").text();
                var ac_code   = $(this).closest("tr").find("td:eq(7)").text();
                var ac_posting= $(this).closest("tr").find("td:eq(3)").text();
                var nature    = $(this).closest("tr").find("td:eq(4)").text();
                var code      = $(this).closest("tr").find("td:eq(6)").text();
                var revcodeup = $(this).closest("tr").find("td:eq(8)").text();
                var revmoti   = $(this).closest("tr").find("td:eq(8)").text();

                populateFormWithData5(name, ac_code, ac_posting, nature, code, revcodeup);

                // Show/hide MDR section in edit modal based on nature
                toggleMdrSection(nature, 'editMdrSection');

                // Load MDR rates if nature is UPI or Credit Card
                if (nature === 'UPI' || nature === 'Credit Card') {
                    loadEditMdrRates(revcodeup);
                } else {
                    $('#editMdrTableBody').empty();
                }

                loadcheckboxes('/getcheckboxes');

                async function loadcheckboxes(Endpoint, selectbox) {
                    const loadCheckboxDiv = document.getElementById('loadcheckbox');
                    try {
                        const data = await fetch(Endpoint).then(response => response.json());
                        loadCheckboxDiv.innerHTML = '';

                        const totalCheckboxes = data.length;
                        const checkboxesPerColumn = Math.ceil(totalCheckboxes / 2);

                        let leftColumn = document.createElement('div');
                        let rightColumn = document.createElement('div');

                        for (let i = 0; i < totalCheckboxes; i++) {
                            const item = data[i];
                            const ischecked = await getCheckedStatus(item.dcode, revmoti);
                            const checkbox = createCheckbox(item, ischecked);
                            if (i < checkboxesPerColumn) {
                                leftColumn.appendChild(checkbox);
                            } else {
                                rightColumn.appendChild(checkbox);
                            }
                        }

                        loadCheckboxDiv.appendChild(leftColumn);
                        loadCheckboxDiv.appendChild(rightColumn);
                    } catch (error) {
                        console.error('Error fetching options:', error);
                    }
                }

                function getCheckedStatus(dcode, revmoti) {
                    return new Promise((resolve, reject) => {
                        const xhr = new XMLHttpRequest();
                        xhr.open('POST', '/getperfectcheckrows', true);
                        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                const data = JSON.parse(xhr.responseText);
                                resolve(data.some(row => row.rest_code === dcode) ? 'checked' : '');
                            } else if (xhr.readyState === 4) {
                                console.error('Error fetching checked status. Status:', xhr.status);
                                reject('');
                            }
                        };
                        xhr.send(`cid2=${dcode}&revmoti=${revmoti}&_token={{ csrf_token() }}`);
                    });
                }

                function createCheckbox(item, ischecked) {
                    const checkbox = document.createElement('div');
                    checkbox.className = 'form-check';
                    checkbox.innerHTML = `<input type="checkbox" ${ischecked} class="form-check-input" name="departpay[]" value="${item.dcode}">
        <label class="form-check-label">${item.name}</label>
        <br>`;
                    return checkbox;
                }
            });
        });
    </script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.2.1/js/dataTables.js"></script>
    <script>
        new Datatable('#revmast');
    </script>
@endsection

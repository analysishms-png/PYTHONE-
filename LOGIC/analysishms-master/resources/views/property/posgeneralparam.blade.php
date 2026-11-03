@extends('property.layouts.main')
@section('main-container')
    <style>
        table#posbillprint tbody td {
            padding: 1px 1px 1px 1px;
        }

        table#poskotprint tbody td {
            padding: 1px 1px 1px 1px;
        }
    </style>
    <div class="content-body">
        <!-- row -->
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="tabs">
                                {{-- Bill Printing --}}
                                <div class="tabby-tab">
                                    <input type="radio" id="tab-1" name="tabby-tabs" checked>
                                    <label class="tabby" for="tab-1">Bill Printing</label>
                                    <div class="tabby-content">
                                        <form class="form" name="billprintingfm" id="billprintingfm"
                                            action="{{ route('posbillprintstore') }}" method="POST">
                                            @csrf
                                            <input type="hidden" value="{{ count($billrows) }}" name="btotalrows" id="btotalrows">
                                            <div class="astrogeeksagar">
                                                <div style="display: flex; position: relative; align-items: center;">
                                                    <h4>Bill Printing</h4>
                                                </div>
                                                <div class="table-responsive">
                                                    <table id="posbillprint" class="table table-striped table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Sn</th>
                                                                <th>Module</th>
                                                                <th>Depart Name</th>
                                                                <th>Description</th>
                                                                <th>Printing Path</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @php $sn = 1; @endphp
                                                            @foreach ($billrows as $item => $value)
                                                                <tr>
                                                                    <td class="text-center">{{ $sn }}</td>
                                                                    <td>
                                                                        <select class="form-control bmodule" name="bmodule{{ $sn }}" id="bmodule{{ $sn }}">
                                                                            <option value="">Select</option>
                                                                            <?php
                                                                            $uniquenames = [];
                                                                        
                                                                            foreach ($billrows as $option) {
                                                                                if (!in_array($option->name, $uniquenames)) {
                                                                                    $uniquenames[] = $option->name;
                                                                                    ?>
                                                                            <option data-nature="{{ $option->nature }}" data-id="{{ $option->dcode }}" value="{{ $option->pos == 'Y' ? 'POS' : 'FOM' }}" {{ $option->dcode == $value->restcode ? 'selected' : '' }}>{{ ($option->pos == 'Y' ? 'POS ' : 'FOM ') . '(' . $option->name . ')' }}</option>
                                                                            <?php
                                                                                }
                                                                            }
                                                                            ?>
                                                                        </select>
                                                                    </td>
                                                                    <td class="text-center">
                                                                        <span class="text-center" id="bdepnametd{{ $sn }}">
                                                                            @if (isset($value->restcode))
                                                                                {{ $value->name }}
                                                                            @endif
                                                                        </span>
                                                                        <input value="{{ isset($value->restcode) ? $value->name : '' }}" type="hidden" name="bdepname{{ $sn }}" id="bdepname{{ $sn }}">
                                                                        <input value="{{ isset($value->restcode) ? $value->dcode : '' }}" type="hidden" name="bdcode{{ $sn }}" id="bdcode{{ $sn }}">
                                                                    </td>
                                                                    <td>
                                                                        <select class="form-control" name="bdescription{{ $sn }}" id="bdescription{{ $sn }}">
                                                                            <option value="">Select</option>
                                                                            @if (isset($value->restcode))
                                                                                <option value="{{ $value->description }}" selected>{{ $value->description }}</option>
                                                                            @endif
                                                                        </select>
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" value="{{ isset($value->restcode) ? $value->printerpath : '' }}" placeholder="Enter Path {{ $sn }}" class="form-control billprints" name="bprintpath{{ $sn }}" id="bprintpath{{ $sn }}">
                                                                    </td>
                                                                </tr>
                                                                @php $sn++ @endphp
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                {{-- KOT Printing --}}

                                <div class="tabby-tab">
                                    <input type="radio" id="tab-2" name="tabby-tabs">
                                    <label class="tabby" for="tab-2">KOT Printing</label>
                                    <div class="tabby-content">
                                        <form class="form" name="poskotprintfm" id="poskotprintfm"
                                            action="{{ route('poskotprintingstore') }}" method="POST">
                                            @csrf
                                            <input type="hidden" value="{{ count($kotrows) }}" name="ktotalrows" id="ktotalrows">
                                            <div class="astrogeeksagar">
                                                <div style="display: flex; position: relative; align-items: center;">
                                                    <h4>KOT Printing</h4>
                                                </div>
                                                <div class="table-responsive">
                                                    <table id="poskotprint" class="table table-striped table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Sn.</th>
                                                                <th>Module</th>
                                                                <th>Depart Name</th>
                                                                <th>Description</th>
                                                                <th>Printing Path</th>
                                                                <th>Kitchen</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @php $sn = 1; @endphp
                                                            @foreach ($kotrows as $item => $value)
                                                                <tr>
                                                                    <td class="text-center">{{ $sn }}</td>
                                                                    <td>
                                                                        <select class="form-control kmodule" name="kmodule{{ $sn }}" id="kmodule{{ $sn }}">
                                                                            <option value="">Select</option>
                                                                            <?php
                                                                            $uniquenames = [];
                                                                        
                                                                            foreach ($kotrows as $option) {
                                                                                if (!in_array($option->name, $uniquenames)) {
                                                                                    $uniquenames[] = $option->name;
                                                                                    ?>
                                                                            <option data-id="{{ $option->dcode }}" value="KOT" {{ $option->dcode == $value->restcode ? 'selected' : '' }}>{{ 'KOT' . '(' . $option->name . ')' }}</option>
                                                                            <?php
                                                                                }
                                                                            }
                                                                            ?>
                                                                        </select>
                                                                    </td>
                                                                    <td class="text-center">
                                                                        <span class="text-center" id="kdepnametd{{ $sn }}">
                                                                            @if (isset($value->restcode))
                                                                                {{ $value->name }}
                                                                            @endif
                                                                        </span>
                                                                        <input value="{{ isset($value->restcode) ? $value->name : '' }}" type="hidden" name="kdepname{{ $sn }}" id="kdepname{{ $sn }}">
                                                                        <input value="{{ isset($value->restcode) ? $value->dcode : '' }}" type="hidden" name="kdcode{{ $sn }}" id="kdcode{{ $sn }}">
                                                                    </td>
                                                                    <td>
                                                                        <select class="form-control" name="kdescription{{ $sn }}" id="kdescription{{ $sn }}">
                                                                            <option value="">Select</option>
                                                                            <option value="Guest Bill Window Plain Paper 1" {{ isset($value->description) && $value->description == 'Guest Bill Window Plain Paper 1' ? 'selected' : '' }}>Guest Bill Window Plain Paper 1</option>
                                                                            <option value="Guest Bill Window Plain Paper 2" {{ isset($value->description) && $value->description == 'Guest Bill Window Plain Paper 2' ? 'selected' : '' }}>Guest Bill Window Plain Paper 2</option>
                                                                            <option value="3 Inch Running Paper Win Print" {{ isset($value->description) && $value->description == '3 Inch Running Paper Win Print' ? 'selected' : '' }}>3 Inch Running Paper Win Print</option>
                                                                            <option value="3 Inch Running Paper Dos Print" {{ isset($value->description) && $value->description == '3 Inch Running Paper Dos Print' ? 'selected' : '' }}>3 Inch Running Paper Dos Print</option>
                                                                        </select>
                                                                    </td>
                                                                    <td>
                                                                        <input autocomplete="off" type="text" value="{{ isset($value->restcode) ? $value->printerpath : '' }}" placeholder="Enter Path {{ $sn }}" class="form-control printerpath kotprints" name="kprintpath{{ $sn }}" id="kprintpath{{ $sn }}">
                                                                    </td>
                                                                    <td>
                                                                        <select class="form-control" name="kitchen{{ $sn }}" id="kitchen{{ $sn }}">
                                                                            <option value="">Select</option>
                                                                            @foreach ($kitchen as $item)
                                                                                <option value="{{ $item->dcode }}" {{ $value->kitchen == $item->dcode ? 'selected' : '' }}>{{ $item->name }}</option>
                                                                            @endforeach
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                @php $sn++ @endphp
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="col-7 mt-4 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit <i
                                                        class="fa-solid fa-file-export"></i></button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- #/ container -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script>
        $(document).ready(function() {
            $(document).on('keypress', '.billprints', function(event) {
                if (event.key === 'Enter') {
                    event.preventDefault();
                    let totalRows = $('#posbillprint tbody tr').length;
                    let newRowNumber = totalRows + 1;
                    let lastRow = $('#posbillprint tbody tr:last');
                    let newRow = lastRow.clone();
                    newRow.find('td.text-center').first().text(newRowNumber);
                    newRow.find('select, input, span').each(function() {
                        let oldId = $(this).attr('id');
                        let oldName = $(this).attr('name');
                        if (oldId) {
                            let newId = oldId.replace(/\d+/, newRowNumber);
                            $(this).attr('id', newId);
                        }
                        if (oldName) {
                            let newName = oldName.replace(/\d+/, newRowNumber);
                            $(this).attr('name', newName);
                        }

                        if ($(this).is('input')) {
                            $(this).val('');
                        }
                        if ($(this).is('span')) {
                            $(this).text('');
                        }
                    });
                    let totalrows = $('#btotalrows').val();
                    $('#btotalrows').val(totalRows + 1);
                    $('#posbillprint tbody').append(newRow);
                }
            });

            $(document).on('keydown', function(event) {
                if (event.shiftKey && event.key === 'D') {
                    event.preventDefault();
                    let totalRows = $('#btotalrows').val();
                    if (totalRows > 0) {
                        $('#posbillprint tbody tr:last').remove();
                        $('#btotalrows').val(totalRows - 1);
                    }
                }
            });

            $(document).on('change', '.bmodule', function() {
                let bmodule = $(this).val();
                let currow = $(this).closest('tr');
                let indexnum = currow.index() + 1;
                let selecteddesc = $(`#bdescription${indexnum}`).val();
                let dcode = $(this).find('option:selected').data('id');
                let fetchxhr = new XMLHttpRequest();
                fetchxhr.open('POST', '/fetchsingledcode', true);
                fetchxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                fetchxhr.onreadystatechange = function() {
                    if (fetchxhr.status === 200 && fetchxhr.readyState === 4) {
                        let results = JSON.parse(fetchxhr.responseText);
                        $(`#bdcode${indexnum}`).val(results.dcode);
                        $(`#bdepname${indexnum}`).val(results.name);
                        $(`#bdepnametd${indexnum}`).text(results.name);
                    }
                }
                fetchxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                let description = currow.find('select[name^="bdescription"]');
                let opt = '';
                if (bmodule == 'POS') {
                    opt += `<option value="Bill Windows Plain Paper 1" ${selecteddesc == 'Bill Windows Plain Paper 1' ? 'selected' : ''}>Bill Windows Plain Paper 1</option>
                            <option value="Bill Windows Plain Paper 2" ${selecteddesc == 'Bill Windows Plain Paper 2' ? 'selected' : ''}>Bill Windows Plain Paper 2</option>
                            <option value="3 Inch Running Paper Windows Print 1" ${selecteddesc == '3 Inch Running Paper Windows Print 1' ? 'selected' : ''}>3 Inch Running Paper Windows Print 1</option>
                            <option value="3 Inch Running Paper Windows Print 2" ${selecteddesc == '3 Inch Running Paper Windows Print 2' ? 'selected' : ''}>3 Inch Running Paper Windows Print 2</option>
                            <option value="3 Inch Running Paper DOS Print" ${selecteddesc == '3 Inch Running Paper DOS Print' ? 'selected' : ''}>3 Inch Running Paper DOS Print</option>`;
                } else if (bmodule == 'FOM') {
                    opt = `<option value="Guest Bill Window Plain Paper 1" ${selecteddesc == 'Guest Bill Window Plain Paper 1' ? 'selected' : ''}>Guest Bill Window Plain Paper 1</option>
                            <option value="Guest Bill Window Plain Paper 2" ${selecteddesc == 'Guest Bill Window Plain Paper 2' ? 'selected' : ''}>Guest Bill Window Plain Paper 2</option>`;
                }

                description.html('');
                description.html(opt);
            });
        });


        // Kot Functions
        $(document).ready(function() {
            $(document).on('keypress', '.kotprints', function(event) {
                if (event.key === 'Enter') {
                    event.preventDefault();
                    let totalRows = $('#poskotprint tbody tr').length;
                    let newRowNumber = totalRows + 1;
                    let lastRow = $('#poskotprint tbody tr:last');
                    let newRow = lastRow.clone();
                    newRow.find('td.text-center').first().text(newRowNumber);
                    newRow.find('select, input, span').each(function() {
                        let oldId = $(this).attr('id');
                        let oldName = $(this).attr('name');
                        if (oldId) {
                            let newId = oldId.replace(/\d+/, newRowNumber);
                            $(this).attr('id', newId);
                        }
                        if (oldName) {
                            let newName = oldName.replace(/\d+/, newRowNumber);
                            $(this).attr('name', newName);
                        }

                        if ($(this).is('input')) {
                            $(this).val('');
                        }
                        if ($(this).is('span')) {
                            $(this).text('');
                        }
                    });
                    let totalrows = $('#ktotalrows').val();
                    $('#ktotalrows').val(totalRows + 1);
                    $('#poskotprint tbody').append(newRow);
                }
            });

            $(document).on('keydown', function(event) {
                if (event.shiftKey && event.key === 'D') {
                    event.preventDefault();
                    let totalRows = $('#ktotalrows').val();
                    if (totalRows > 0) {
                        $('#poskotprint tbody tr:last').remove();
                        $('#ktotalrows').val(totalRows - 1);
                    }
                }
            });

            $(document).on('change', '.kmodule', function() {
                let bmodule = $(this).val();
                let currow = $(this).closest('tr');
                let indexnum = currow.index() + 1;
                let dcode = $(this).find('option:selected').data('id');
                let fetchxhr = new XMLHttpRequest();
                fetchxhr.open('POST', '/fetchsingledcode', true);
                fetchxhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                fetchxhr.onreadystatechange = function() {
                    if (fetchxhr.status === 200 && fetchxhr.readyState === 4) {
                        let results = JSON.parse(fetchxhr.responseText);
                        $(`#kdcode${indexnum}`).val(results.dcode);
                        $(`#kdepname${indexnum}`).val(results.name);
                        $(`#kdepnametd${indexnum}`).text(results.name);
                    }
                }
                fetchxhr.send(`dcode=${dcode}&_token={{ csrf_token() }}`);
                let description = currow.find('select[name^="kdescription"]');
                let opt = '';
                opt += `<option value="3 Inch Running Paper Win Print">3 Inch Running Paper Win Print</option>
                <option value="3 Inch Running Paper Dos Print">3 Inch Running Paper Dos Print</option>`;
                description.html('');
                description.html(opt);
            });

            $('.bmodule').trigger('change');
        });
    </script>
@endsection

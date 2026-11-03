{{-- ===================== Quick Add Company Modal ===================== --}}
@if ($canAddCompany)
    <div class="modal fade" id="quickAddCompanyModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddCompanyModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddCompanyModalLabel">
                        <i class="fa fa-building mr-1"></i> Add New Company
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickCompanyAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qc_name">Company Name <span class="text-danger">*</span></label>
                        <input type="text" id="qc_name" class="form-control" placeholder="Enter company name" maxlength="100">
                    </div>
                    <div class="form-group">
                        <label for="qc_gstin">GST No.</label>
                        <input type="text" id="qc_gstin" class="form-control" placeholder="Enter GST number" maxlength="15">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickCompanySubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
@endif
{{-- ===================== End Quick Add Company Modal ===================== --}}

<script>
    @if ($canAddCompany)
        // Reset modal fields on close
        $('#quickAddCompanyModal').on('hidden.bs.modal', function() {
            $('#qc_name').val('');
            $('#qc_gstin').val('');
            $('#quickCompanyAlert').hide().removeClass('alert-success alert-danger').text('');
            $('#quickCompanySubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
        });

        // Submit button click -> AJAX POST
        $('#quickCompanySubmitBtn').on('click', function() {
            var name = $.trim($('#qc_name').val());
            var gstin = $.trim($('#qc_gstin').val());

            if (!name) {
                showQuickCompanyAlert('danger', 'Company name is required.');
                return;
            }

            if (gstin !== '' && gstin.length < 15) {
                showQuickCompanyAlert('danger', 'GSTIN length should be equal to 15!');
                return;
            }

            // GST format validation — Indian GSTIN regex
            var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/;
            if (gstin !== '' && !gstRegex.test(gstin.toUpperCase())) {
                showQuickCompanyAlert('danger', 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5');
                return;
            }

            var btn = $(this);
            btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

            $.ajax({
                url: '{{ route('reservation.quickAddCompany') }}',
                type: 'POST',
                data: {
                    name: name,
                    gstin: gstin,
                    _token: '{{ csrf_token() }}'
                },
                success: function(res) {
                    if (res.success) {
                        showQuickCompanyAlert('success', res.message);

                        // Rebuild company dropdown with updated list
                        var companySelect = $('#company');
                        companySelect.empty().append('<option value="">Select</option>');
                        $.each(res.companies, function(i, c) {
                            var opt = $('<option>', {
                                value: c.sub_code,
                                text: c.name
                            }).attr('data-gst', c.gstin || '');
                            companySelect.append(opt);
                        });

                        // Auto-select newly added company
                        companySelect.val(res.sub_code).trigger('change');

                        // Close modal after 1 second delay
                        setTimeout(function() {
                            $('#quickAddCompanyModal').modal('hide');
                        }, 1000);
                    } else {
                        showQuickCompanyAlert('danger', res.message);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                },
                error: function(xhr) {
                    var msg = 'Something went wrong.';
                    if (xhr.responseJSON && xhr.responseJSON.message) {
                        msg = xhr.responseJSON.message;
                    } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                        var errs = xhr.responseJSON.errors;
                        msg = Object.values(errs).map(function(e) {
                            return e[0];
                        }).join(' ');
                    }
                    showQuickCompanyAlert('danger', msg);
                    btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                }
            });
        });

        function showQuickCompanyAlert(type, message) {
            $('#quickCompanyAlert')
                .removeClass('alert-success alert-danger')
                .addClass('alert-' + type)
                .text(message)
                .show();
        }
    @endif
</script>

{{-- ===================== Quick Add Travel Agent Modal ===================== --}}
@if ($canAddTravelAgent)
    <div class="modal fade" id="quickAddTravelAgentModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddTravelAgentModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddTravelAgentModalLabel">
                        <i class="fa fa-plane mr-1"></i> Add New Travel Agent
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickTravelAgentAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qta_name">Agent Name <span class="text-danger">*</span></label>
                        <input type="text" id="qta_name" class="form-control" placeholder="Enter agent name" maxlength="100">
                    </div>
                    <div class="form-group">
                        <label for="qta_gstin">GST No.</label>
                        <input type="text" id="qta_gstin" class="form-control" placeholder="Enter GST number" maxlength="15">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickTravelAgentSubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
@endif
{{-- ===================== End Quick Add Travel Agent Modal ===================== --}}

{{-- ===================== Quick Add City Modal ===================== --}}
@if ($canAddCity)
    <div class="modal fade" id="quickAddCityModal" tabindex="-1" role="dialog"
        aria-labelledby="quickAddCityModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="quickAddCityModalLabel">
                        <i class="fa fa-map-marker mr-1"></i> Add New City
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="quickCityAlert" class="alert" style="display:none;"></div>
                    <div class="form-group">
                        <label for="qc_cityname">City Name <span class="text-danger">*</span></label>
                        <input type="text" id="qc_cityname" class="form-control" placeholder="Enter city name" maxlength="100">
                    </div>
                    <div class="form-group">
                        <label for="qc_country">Country <span class="text-danger">*</span></label>
                        <select id="qc_country" class="form-control">
                            <option value="">Select Country</option>
                            @foreach ($countrydata as $c)
                                <option value="{{ $c->country_code }}">{{ $c->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="qc_state">State <span class="text-danger">*</span></label>
                        <select id="qc_state" class="form-control">
                            <option value="">Select State</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="qc_zipcode">Zip Code</label>
                        <input type="text" id="qc_zipcode" class="form-control" placeholder="Enter zip code" maxlength="20">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-success" id="quickCitySubmitBtn">
                        <i class="fa fa-save mr-1"></i> Submit
                    </button>
                </div>
            </div>
        </div>
    </div>
@endif
{{-- ===================== End Quick Add City Modal ===================== --}}

<script>
    @if ($canAddTravelAgent)
        // ===== Travel Agent Modal =====
        $('#quickAddTravelAgentModal').on('hidden.bs.modal', function() {
            $('#qta_name').val('');
            $('#qta_gstin').val('');
            $('#quickTravelAgentAlert').hide().removeClass('alert-success alert-danger').text('');
            $('#quickTravelAgentSubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
        });

        $('#quickTravelAgentSubmitBtn').on('click', function() {
            var name = $.trim($('#qta_name').val());
            var gstin = $.trim($('#qta_gstin').val());

            if (!name) {
                showQuickTravelAgentAlert('danger', 'Agent name is required.');
                return;
            }

            if (gstin !== '' && gstin.length < 15) {
                showQuickTravelAgentAlert('danger', 'GSTIN length should be equal to 15!');
                return;
            }

            var gstRegex = /^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/;
            if (gstin !== '' && !gstRegex.test(gstin.toUpperCase())) {
                showQuickTravelAgentAlert('danger', 'Invalid GSTIN format! e.g. 22AAAAA0000A1Z5');
                return;
            }

            var btn = $(this);
            btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

            $.ajax({
                url: '{{ route('reservation.quickAddTravelAgent') }}',
                type: 'POST',
                data: {
                    name: name,
                    gstin: gstin,
                    _token: '{{ csrf_token() }}'
                },
                success: function(res) {
                    if (res.success) {
                        showQuickTravelAgentAlert('success', res.message);
                        var agentSelect = $('#travel_agent');
                        agentSelect.empty().append('<option value="">Select</option>');
                        $.each(res.agents, function(i, a) {
                            agentSelect.append($('<option>', {
                                value: a.sub_code,
                                text: a.name
                            }));
                        });
                        agentSelect.val(res.sub_code).trigger('change');
                        setTimeout(function() {
                            $('#quickAddTravelAgentModal').modal('hide');
                        }, 1000);
                    } else {
                        showQuickTravelAgentAlert('danger', res.message);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                },
                error: function(xhr) {
                    var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                    showQuickTravelAgentAlert('danger', msg);
                    btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                }
            });
        });

        function showQuickTravelAgentAlert(type, message) {
            $('#quickTravelAgentAlert').removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
        }
    @endif

    // ===== City Modal =====
    @if ($canAddCity)
        $('#quickAddCityModal').on('hidden.bs.modal', function() {
            $('#qc_cityname').val('');
            $('#qc_country').val('');
            $('#qc_state').html('<option value="">Select State</option>');
            $('#qc_zipcode').val('');
            $('#quickCityAlert').hide().removeClass('alert-success alert-danger').text('');
            $('#quickCitySubmitBtn').prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
        });

        // Country change -> load states via existing /getState2 route
        $('#qc_country').on('change', function() {
            var cid = $(this).val();
            $('#qc_state').html('<option value="">Select State</option>');
            if (!cid) return;
            $.ajax({
                url: '/getState2',
                type: 'POST',
                data: {
                    cid: cid,
                    _token: '{{ csrf_token() }}'
                },
                success: function(html) {
                    $('#qc_state').html(html);
                }
            });
        });

        $('#quickCitySubmitBtn').on('click', function() {
            var cityname = $.trim($('#qc_cityname').val());
            var country = $('#qc_country').val();
            var state = $('#qc_state').val();
            var zipcode = $.trim($('#qc_zipcode').val());

            if (!cityname) {
                showQuickCityAlert('danger', 'City name is required.');
                return;
            }
            if (!country) {
                showQuickCityAlert('danger', 'Country is required.');
                return;
            }
            if (!state) {
                showQuickCityAlert('danger', 'State is required.');
                return;
            }

            var btn = $(this);
            btn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-1"></i> Saving...');

            $.ajax({
                url: '{{ route('reservation.quickAddCity') }}',
                type: 'POST',
                data: {
                    cityname: cityname,
                    country: country,
                    state: state,
                    zipcode: zipcode,
                    _token: '{{ csrf_token() }}'
                },
                success: function(res) {
                    if (res.success) {
                        showQuickCityAlert('success', res.message);
                        var citySelect = $('#cityname');
                        citySelect.empty().append('<option value="">Select City</option>');
                        $.each(res.cities, function(i, c) {
                            citySelect.append($('<option>', {
                                value: c.city_code,
                                text: c.cityname
                            }));
                        });
                        citySelect.val(res.city_code).trigger('change');
                        setTimeout(function() {
                            $('#quickAddCityModal').modal('hide');
                        }, 1000);
                    } else {
                        showQuickCityAlert('danger', res.message);
                        btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                    }
                },
                error: function(xhr) {
                    var msg = (xhr.responseJSON && xhr.responseJSON.message) ? xhr.responseJSON.message : 'Something went wrong.';
                    showQuickCityAlert('danger', msg);
                    btn.prop('disabled', false).html('<i class="fa fa-save mr-1"></i> Submit');
                }
            });
        });

        function showQuickCityAlert(type, message) {
            $('#quickCityAlert').removeClass('alert-success alert-danger').addClass('alert-' + type).text(message).show();
        }
    @endif
</script>

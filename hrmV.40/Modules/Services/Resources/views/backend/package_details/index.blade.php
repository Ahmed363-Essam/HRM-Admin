@extends('backend.layouts.app')
@section('title', @$data['title'])
@section('content')

    <div class=" table-content table-basic align-content-center pb-3 ">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6  pb-3">
                        <p>
                            <b>Package number:</b> {{ $data['package']->package_no }}
                        </p>
                        <p>
                            <b>Package Name:</b> {{ $data['package']->name }}
                        </p>

                    </div>
                    <div class="col-lg-6  pb-3">
                        <p>
                            <b>Contract Data:</b> {{ $data['package']->contract_date }}
                        </p>
                        <p>
                            <b>Created At :</b> {{ $data['package']->created_at }}
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>

    {!! breadcrumb([
        'title' => @$data['title'],
    ]) !!}
    <div class=" table-content table-basic ">
        <div class="card">
            {{-- --}}
            <div class="card-body">
                <!-- toolbar table start -->
                <div
                    class="table-toolbar d-flex flex-wrap gap-2 flex-xl-row justify-content-center justify-content-xxl-between align-content-center pb-3">
                    <div class="align-self-center">
                        <div class="d-flex flex-wrap gap-2  flex-lg-row justify-content-center align-content-center">
                            <!-- show per page -->
                            <div class="align-self-center">
                                <label>
                                    <span class="mr-8">{{ _trans('common.Show') }}</span>
                                    <select class="form-select d-inline-block" id="entries"
                                        onchange="get_service_package_details_datatable()">
                                        <option selected value="10">{{ _trans('10') }}</option>
                                        <option value="25">{{ _trans('25') }}</option>
                                        <option value="50">{{ _trans('50') }}</option>
                                        <option value="100">{{ _trans('100') }}</option>
                                    </select>
                                    <span class="ml-8">{{ _trans('common.Entries') }}</span>
                                </label>
                            </div>

                            <div class="align-self-center d-flex flex-wrap gap-2">
                                <!-- add btn -->
                                {{-- subscription_currency_create --}}
                                @if (hasPermission('service_package_create'))
                                    <div class="align-self-center">
                                        <a href="javascript:;" role="button" class="btn-add" data-bs-toggle="tooltip"
                                            onclick="mainModalOpen(`{{ route('packageDetails.create_modal', $data['id']) }}`)"
                                            data-bs-placement="right" data-bs-title="{{ _trans('common.Add') }}">
                                            <span><i class="fa-solid fa-plus"></i> </span>
                                            <span class="d-none d-xl-inline">{{ _trans('common.Create') }}</span>
                                        </a>
                                    </div>
                                @endif

                            </div>

                            <!-- search -->
                            <div class="align-self-center">
                                <div class="search-box d-flex">
                                    <input class="form-control" placeholder="{{ _trans('common.Search') }}" name="search"
                                        onkeyup="get_service_package_details_datatable()" autocomplete="off">
                                    <span class="icon"><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </div>

                            <!-- dropdown action -->
                            <div class="align-self-center">
                                <div class="dropdown dropdown-action" data-bs-toggle="tooltip" data-bs-placement="right"
                                    data-bs-title="{{ _trans('common.Action') }}">
                                    <button type="button" class="btn-dropdown" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu dropdown-menu-end">
                                        <li>
                                            <a class="dropdown-item" href="#"
                                                onclick="tableAction('active', `{{ route('packages.statusUpdate') }}`)"><span
                                                    class="icon mr-10"><i class="fa-solid fa-eye"></i></span>
                                                {{ _trans('common.Activate') }} <span class="count">(0)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#" aria-current="true"
                                                onclick="tableAction('inactive',`{{ route('packages.statusUpdate') }}`)">
                                                <span class="icon mr-8"><i class="fa-solid fa-eye-slash"></i></span>
                                                {{ _trans('common.Inactive') }} <span class="count">(0)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="#"
                                                onclick="tableAction('delete', `{{ route('packages.delete_data') }}`)">
                                                <span class="icon mr-16"><i class="fa-solid fa-trash-can"></i></span>
                                                {{ _trans('common.Delete') }} <span class="count">(0)</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            {{-- exportOnMobileDevice --}}
                            <div class="d-flex d-lg-none">
                                @include('backend.partials.buttons')
                            </div>
                            {{-- exportOnMobileDevice::end --}}
                        </div>
                    </div>
                    <!-- export -->
                    <div class="d-none d-lg-flex">
                        @include('backend.partials.buttons')
                    </div>

                </div>
                <!-- toolbar table end -->
                <!--  table start -->
                <div class="table-responsive">
                    @include('backend.partials.table')
                </div>
                <!--  table end -->
            </div>
        </div>
    </div>
@endsection
@section('script')
    @include('backend.partials.table_js')
    <script>
        function get_service_package_details_datatable(...values) {
            var tableUrl = $('meta[name="base-url"]').attr("content");
            let data = [];
            let url = "{{ url()->current() }}";
            console.log(url);
            data["url"] = url;

            var from_date = $("#start").val();
            var to_date = $("#end_date").val();
            var shortBy = $("#short_by").val();

            data["value"] = {
                from: from_date ? from_date : null,
                to: to_date ? to_date : null,
                short_by: shortBy ? shortBy : null,
                limit: $("#entries").val(),
                search: $('input[name="search"]').val(),
                _token: _token,
            };
            data["column"] = ["id", "machine_id", "model_id", "brand_id", "origin", "quantity",
                "warranty_period", "status", "action"
            ];
            data["table_id"] = "service_package_details_table";
            table(data);
        }
        $(".service_package_details_table").length > 0 ? get_service_package_details_datatable() : "";
    </script>
@endsection
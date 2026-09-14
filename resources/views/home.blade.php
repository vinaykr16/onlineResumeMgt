@extends('layouts.app')

@section('content')

    {{-- DataTables CSS --}}
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

    <style>
        /* =========================
           PAGE / TABLE
        ========================== */

        .container {
            max-width: 1251px;
        }

        #profileTable {
            width: 100% !important;
        }

        #profileTable th,
        #profileTable td {
            vertical-align: middle;
            font-size: 14px;
        }

        /*
         * Keep table cell content on one line.
         * DataTables will provide horizontal scrolling.
         */
        #profileTable th,
        #profileTable td {
            white-space: nowrap;
        }

        /* Long text can be truncated */
        #profileTable td {
            overflow: hidden;
            text-overflow: ellipsis;
        }

        /* Links */
        #profileTable a {
            text-decoration: none;
        }

        #profileTable a:hover {
            text-decoration: underline;
        }


        /* =========================
           ACTION COLUMN
        ========================== */

        #profileTable th.action-column,
        #profileTable td.action-column {
            width: 90px !important;
            min-width: 90px !important;
            max-width: 90px !important;

            text-align: center !important;
            white-space: nowrap !important;
            overflow: visible !important;
        }

        /* Action icons container */
        #profileTable td.action-column .action-buttons {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            width: 100%;
        }

        /* Individual action icon */
        #profileTable td.action-column .action-buttons a {
            display: inline-flex;
            align-items: center;
            justify-content: center;

            width: 20px;
            height: 20px;

            text-decoration: none;
        }

        #profileTable td.action-column svg {
            width: 16px;
            height: 16px;
        }


        /* =========================
           DATATABLES SEARCH / LENGTH
        ========================== */

        .dataTables_wrapper {
            width: 100%;
        }

        .dataTables_wrapper .dataTables_filter input {
            margin-left: 5px;
        }

        .dataTables_wrapper .dataTables_length select {
            margin: 0 5px;
        }


        /* =========================
           HORIZONTAL SCROLL
        ========================== */

        .dataTables_wrapper .dataTables_scroll {
            overflow-x: auto;
        }

        .dataTables_wrapper .dataTables_scrollBody {
            overflow-x: auto !important;
        }


        /* =========================
           HEADER
        ========================== */

        #profileTable thead th {
            vertical-align: middle;
        }


        /* =========================
           CARD HEADER
        ========================== */

        .card-header {
            min-height: 48px;
        }


        /* =========================
           RESPONSIVE
        ========================== */

        @media (max-width: 1200px) {

            .container {
                max-width: 100%;
            }

            #profileTable th,
            #profileTable td {
                font-size: 13px;
            }

            #profileTable th.action-column,
            #profileTable td.action-column {
                width: 90px !important;
                min-width: 90px !important;
                max-width: 90px !important;
            }
        }
    </style>


    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-12">

                <div class="card">

                    {{-- =========================
                         SUCCESS MESSAGE
                    ========================== --}}

                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif


                    {{-- =========================
                         ERROR MESSAGE
                    ========================== --}}

                    @if (session('error'))
                        <div class="alert alert-danger">
                            {{ session('error') }}
                        </div>
                    @endif


                    {{-- =========================
                         CARD HEADER
                    ========================== --}}

                    <div class="card-header d-flex justify-content-between align-items-center">

                        <h5 class="mb-0">
                            {{ __('All profile data') }}
                        </h5>

                        <a href="{{ route('export.users') }}"
                           class="btn btn-success btn-sm">
                            Export to Excel
                        </a>

                    </div>


                    {{-- =========================
                         CARD BODY
                    ========================== --}}

                    <div class="card-body">

                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif


                        {{-- =========================
                             PROFILE TABLE
                        ========================== --}}

                        <table id="profileTable"
                               class="table table-bordered table-striped table-hover align-middle">

                            <thead>

                                <tr>

                                    <th>
                                        Name
                                    </th>

                                    {{-- Email intentionally disabled --}}
                                    {{--
                                    <th>
                                        Email
                                    </th>
                                    --}}

                                    <th>
                                        Mobile Number
                                    </th>

                                    <th>
                                        Designation
                                    </th>

                                    <th>
                                        Current location
                                    </th>

                                    <th>
                                        Current company
                                    </th>

                                    <th>
                                        Current CTC
                                    </th>

                                    <th>
                                        Expected CTC
                                    </th>

                                    <th>
                                        Notice period
                                    </th>

                                    <th>
                                        Company applied for
                                    </th>

                                    <th>
                                        Interview status
                                    </th>

                                    <th>
                                        Offer status
                                    </th>

                                    {{-- ACTION --}}
                                    <th class="action-column">
                                        Action
                                    </th>

                                </tr>

                            </thead>


                            <tbody>

                                @foreach ($userData as $val)

                                    <tr>

                                        {{-- NAME --}}
                                        <td>
                                            {{ $val->name }}
                                        </td>


                                        {{-- MOBILE --}}
                                        <td>
                                            {{ $val->mobile_number }}
                                        </td>


                                        {{-- DESIGNATION --}}
                                        <td>
                                            {{ $val->designation }}
                                        </td>


                                        {{-- CURRENT LOCATION --}}
                                        <td>
                                            {{ $val->current_location }}
                                        </td>


                                        {{-- CURRENT COMPANY --}}
                                        <td>
                                            {{ $val->current_company }}
                                        </td>


                                        {{-- CURRENT CTC --}}
                                        <td>
                                            {{ $val->current_ctc }}
                                        </td>


                                        {{-- EXPECTED CTC --}}
                                        <td>
                                            {{ $val->expected_ctc }}
                                        </td>


                                        {{-- NOTICE PERIOD --}}
                                        <td>
                                            {{ $val->notice_period }}
                                        </td>


                                        {{-- COMPANY APPLIED FOR --}}
                                        <td>
                                            {{ $val->company_applied_for }}
                                        </td>


                                        {{-- INTERVIEW STATUS --}}
                                        <td>
                                            {{ $val->interview_status }}
                                        </td>


                                        {{-- OFFER STATUS --}}
                                        <td>
                                            {{ $val->offer_status }}
                                        </td>


                                        {{-- =========================
                                             ACTION COLUMN
                                        ========================== --}}

                                        <td class="action-column">

                                            <div class="action-buttons">

                                                {{-- EDIT --}}
                                                <div data-bs-toggle="tooltip"
                                                     data-bs-placement="top"
                                                     title="Edit">

                                                    <a href="{{ route('edit.profile', ['id' => $val->id]) }}"
                                                       style="color: rgb(26, 78, 78);">

                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                             width="16"
                                                             height="16"
                                                             fill="currentColor"
                                                             class="bi bi-pencil-square"
                                                             viewBox="0 0 16 16">

                                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>

                                                            <path fill-rule="evenodd"
                                                                  d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z"/>

                                                        </svg>

                                                    </a>

                                                </div>


                                                {{-- DOWNLOAD --}}
                                                @if (file_exists(public_path('uploads/' . $val->resume_attachment)))

                                                    <div data-bs-toggle="tooltip"
                                                         data-bs-placement="top"
                                                         title="Download">

                                                        <a href="{{ asset('uploads/' . $val->resume_attachment) }}"
                                                           target="_blank"
                                                           style="color: green;">

                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 width="16"
                                                                 height="16"
                                                                 fill="currentColor"
                                                                 class="bi bi-download"
                                                                 viewBox="0 0 16 16">

                                                                <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5"/>

                                                                <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z"/>

                                                            </svg>

                                                        </a>

                                                    </div>

                                                @endif


                                                {{-- DELETE --}}
                                                <div data-bs-toggle="tooltip"
                                                     data-bs-placement="top"
                                                     title="Delete">

                                                    <a onclick="return confirm('Are you sure you want to delete this resume?')"
                                                       href="{{ route('delete.profile', ['id' => $val->id]) }}"
                                                       style="color: red;">

                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                             width="16"
                                                             height="16"
                                                             fill="currentColor"
                                                             class="bi bi-calendar-x-fill"
                                                             viewBox="0 0 16 16">

                                                            <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2M6.854 8.146 8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 .708-.708"/>

                                                        </svg>

                                                    </a>

                                                </div>

                                            </div>

                                        </td>

                                    </tr>

                                @endforeach

                            </tbody>

                        </table>

                    </div>

                </div>

            </div>

        </div>

    </div>


    {{-- =========================
         JQUERY
    ========================== --}}

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>


    {{-- =========================
         DATATABLES JS
    ========================== --}}

    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>


    <script>
        $(document).ready(function () {

            $('#profileTable').DataTable({

                /*
                 * Disable responsive because it was
                 * squeezing the Action column.
                 */
                responsive: false,

                /*
                 * Allow horizontal scrolling.
                 */
                scrollX: true,

                /*
                 * Number of records per page.
                 */
                pageLength: 10,

                lengthMenu: [5, 10, 25, 50],

                /*
                 * Enable column sorting.
                 */
                ordering: true,

                /*
                 * Keep Action column fixed width.
                 */
                columnDefs: [
                    {
                        targets: -1,
                        width: '90px',
                        orderable: false,
                        className: 'action-column'
                    }
                ],

                /*
                 * Prevent DataTables from
                 * calculating an unwanted width.
                 */
                autoWidth: false

            });

        });
    </script>

@endsection

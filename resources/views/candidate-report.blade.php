@extends('layouts.app')
@section('content')
    <div class="">
        <div class="row justify-content-center ">
            <div class="col-md-10 ">
                <h2 class="text-center mb-4">Search Candidate Report</h2>
                <div class="card">
                    <div class="card-body text-center">
                        <form action="{{ route('searchProfilesResult') }}" method="POST">
                            @csrf

                            <div class="row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="search" class="form-label">Search by Location</label>
                                        <input type="text" class="form-control" id="search" name="current_location"
                                            placeholder="Enter name or email to search"
                                            @if (request('current_location')) value="{{ request('current_location') }}" @endif>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="status" class="form-label">Filter by Interview Status:</label>
                                        <select class="form-select" id="interview_status" name="interview_status">
                                            <option value=""
                                                {{ request('interview_status') == '' ? 'selected' : '' }}>All</option>
                                            <option value="Conducted"
                                                {{ request('interview_status') == 'Conducted' ? 'selected' : '' }}>Conducted
                                            </option>
                                            <option value="Not Conducted"
                                                {{ request('interview_status') == 'Not Conducted' ? 'selected' : '' }}>Not
                                                Conducted</option>
                                            <option value="In review"
                                                {{ request('interview_status') == 'In review' ? 'selected' : '' }}>In review
                                            </option>
                                            <option value="Shortlisted"
                                                {{ request('interview_status') == 'Shortlisted' ? 'selected' : '' }}>
                                                Shortlisted</option>
                                            <option value="Selected"
                                                {{ request('interview_status') == 'Selected' ? 'selected' : '' }}>Selected
                                            </option>
                                        </select>

                                    </div>
                                </div>
                            </div>

                            <div class="row justify-content-center">
                                <div class="col-md-2 mt-3">
                                    <button type="submit" class="btn btn-primary w-100">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                @if (isset($userData) && count($userData) > 0)
                    <div class="card">
                        <div class="card-body">
                            <table id="profileTable" class="table table-bordered table-striped table-hover align-middle">
                                <thead class="mt-13">
                                    <tr>
                                        <th>
                                            Name
                                        </th>
                                        <th>
                                            Email
                                        </th>
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

                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($userData as $val)
                                        <tr>
                                            <td>
                                                {{ $val->name }}
                                            </td>
                                            <td>
                                                {{ $val->email }}
                                            </td>
                                            <td>
                                                {{ $val->mobile_number }}
                                            </td>

                                            <td>
                                                {{ $val->designation }}
                                            </td>
                                            <td>
                                                {{ $val->current_location }}
                                            </td>
                                            <td>
                                                {{ $val->current_company }}
                                            </td>
                                            <td>
                                                {{ $val->current_ctc }}
                                            </td>
                                            <td>
                                                {{ $val->expected_ctc }}
                                            </td>
                                            <td>
                                                {{ $val->notice_period }}
                                            </td>
                                            <td>
                                            {{ $val->company_applied_for }}
                                            </td>

                                            <td>

                                                <div class="d-flex gap-2 align-items-center">
                                                    <!-- Edit Icon -->
                                                    <div data-bs-toggle="tooltip" data-bs-placement="top" title="Edit">
                                                        <a href="{{ route('edit.profile', ['id' => $val->id]) }}"
                                                            style="color: rgb(26, 78, 78)"><svg
                                                                xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="currentColor"
                                                                class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                                <path
                                                                    d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                                                <path fill-rule="evenodd"
                                                                    d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z" />
                                                            </svg>
                                                        </a>
                                                    </div>

                                                    <!-- Download Icon -->
                                                    @if (file_exists(public_path('uploads/' . $val->resume_attachment)))
                                                        <div data-bs-toggle="tooltip" data-bs-placement="top"
                                                            title="Download">
                                                            <a href="{{ asset('uploads/' . $val->resume_attachment) }}"
                                                                target="_blank" style="color: green"><svg
                                                                    xmlns="http://www.w3.org/2000/svg" width="16"
                                                                    height="16" fill="currentColor"
                                                                    class="bi bi-download" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5" />
                                                                    <path
                                                                        d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708z" />
                                                                </svg>
                                                            </a>
                                                        </div>
                                                    @endif

                                                    <!-- Delete Icon -->
                                                    <div data-bs-toggle="tooltip" data-bs-placement="top" title="Delete">
                                                        <a onclick="return confirm('Are you sure you want to delete this resume?')"
                                                            href="{{ route('delete.profile', ['id' => $val->id]) }}"
                                                            style="color: red"><svg xmlns="http://www.w3.org/2000/svg"
                                                                width="16" height="16" fill="currentColor"
                                                                class="bi bi-calendar-x-fill" viewBox="0 0 16 16">
                                                                <path
                                                                    d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2M6.854 8.146 8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 1 1 .708-.708" />
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
                @else
                    <div class="alert alert-info text-center">
                        No candidate profiles found.
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection

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
                                            placeholder="Enter name or email to search" @if(request('current_location')) value="{{ request('current_location') }}" @endif>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="status" class="form-label">Filter by Interview Status:</label>
                                        <select class="form-select" id="interview_status" name="interview_status">
                                            <option value="" {{ request('interview_status') == '' ? 'selected' : '' }}>All</option>
                                            <option value="Conducted" {{ request('interview_status') == 'Conducted' ? 'selected' : '' }}>Conducted</option>
                                            <option value="Not Conducted" {{ request('interview_status') == 'Not Conducted' ? 'selected' : '' }}>Not Conducted</option>
                                            <option value="In review" {{ request('interview_status') == 'In review' ? 'selected' : '' }}>In review</option>
                                            <option value="Shortlisted" {{ request('interview_status') == 'Shortlisted' ? 'selected' : '' }}>Shortlisted</option>
                                            <option value="Selected" {{ request('interview_status') == 'Selected' ? 'selected' : '' }}>Selected</option>
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
                                            DOB
                                        </th>
                                        <th>
                                            Designation
                                        </th>
                                        <th>
                                            PAN
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
                                                {{ $val->dob }}
                                            </td>
                                            <td>
                                                {{ $val->designation }}
                                            </td>
                                            <td>
                                                {{ $val->pan }}
                                            </td>

                                            <td>
                                                <div class="btn-group" role="group"
                                                    aria-label="Basic mixed styles example">
                                                    @if (file_exists(public_path('uploads/' . $val->resume_attachment)))
                                                        <a class="btn btn-info btn-sm text-black"
                                                            href="{{ asset('uploads/' . $val->resume_attachment) }}"
                                                            target="_blank">View Resume</a>
                                                    @endif
                                                    <a class="btn btn-warning btn-sm  text-black"
                                                        href="{{ route('edit.profile', ['id' => $val->id]) }}">Edit</a>
                                                    <a class="btn btn-danger btn-sm  text-white"
                                                        onclick="return confirm('Are you sure you want to delete this resume?')"
                                                        href="{{ route('delete.profile', ['id' => $val->id]) }}">Delete</a>

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

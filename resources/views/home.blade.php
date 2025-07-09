@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<style>
    .table th, .table td {
        vertical-align: middle;
        font-size: 14px;
    }
    .table td {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 200px;
    }
    .table a {
        text-decoration: none;
        color: #0d6efd;
    }
    .table a:hover {
        text-decoration: underline;
    }

</style>


<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

            @if(session('success'))
                <div class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif

            @if(session('error'))
                <div class="alert alert-danger">
                    {{ session('error') }}
                </div>
            @endif

                 <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">{{ __('All profile data') }}</h5>
                    <a href="{{ route('export.users') }}" class="btn btn-success btn-sm">Export to Excel</a>
                </div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
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
                                            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                                                @if(file_exists(public_path('uploads/' . $val->resume_attachment)))
                                                 <a class="btn btn-info btn-sm text-black" href="{{ asset('uploads/' . $val->resume_attachment) }}" target="_blank">View Resume</a>
                                                 @endif
                                                 <a class="btn btn-warning btn-sm  text-black" href="{{ route('edit.profile',['id'=>$val->id]) }}">Edit</a>
                                                 <a class="btn btn-danger btn-sm  text-white" onclick="return confirm('Are you sure you want to delete this resume?')" href="{{ route('delete.profile',['id'=>$val->id]) }}">Delete</a>

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


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#profileTable').DataTable({
            responsive: true,
            pageLength: 10,
            lengthMenu: [5, 10, 25, 50],
            ordering: true
        });
    });
</script>
@endsection

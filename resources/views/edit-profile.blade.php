@extends('layouts.app')
@section('content')
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<style>
    body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f1f5f9;
    margin: 0;
    padding: 40px;
}



h2, .card-header {
    text-align: center;
    margin-bottom: 25px;
    font-size: 22px;
    color: #333;
    font-weight: 600;
}

.form-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 20px;
    margin-bottom: 20px;
}

.form-grid-full {
    grid-column: 1 / -1;
}

label {
    font-weight: 500;
    margin-bottom: 6px;
    display: block;
    color: #444;
}

input[type="text"],
input[type="email"],
input[type="date"],
input[type="number"],
select,
textarea {
    width: 100%;
    padding: 10px 14px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 15px;
    transition: 0.3s ease border-color;
}

input:focus,
select:focus,
textarea:focus {
    border-color: #007bff;
    outline: none;
}

textarea {
    resize: vertical;
    min-height: 80px;
}

button {
    background-color: #007bff;
    color: white;
    padding: 12px 30px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s background ease;
    display: block;
    margin: 0 auto;
}

button:hover {
    background-color: #0056b3;
}

input[type="file"] {
    padding: 6px;
}

#interview_status{
    height: 44px;
}


</style>
<div class="">
    <div class="row justify-content-center ">
        <div class="col-md-10 ">
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
            <div class="card ">
                <div class="card-header">{{ __('Please Edit form data') }}</div>
                <form action="{{route('post-edit-user-data')}}" method="POST"  enctype="multipart/form-data">
                @csrf
                <input type="text" name="id" value="{{ $userData->id }}" hidden>
                <div class="row mt-3 mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label  class="form-label">Name <span style="color: red"><small>*</small></span></label>
                        <input type="text" class="form-control" name="name" value="{{$userData->name}}"  required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email address <span style="color: red"><small>*</small></span></label>
                        <input type="email" class="form-control" name="email" id="exampleFormControlInput1" value="{{$userData->email}}" required>
                        </div>
                    </div>
                </div>
                <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Mobile <span style="color: red"><small>*</small></span></label>
                        <input type="text" class="form-control" name="mobile_number" id="mobile"  maxlength="10"  value="{{$userData->mobile_number}}"  required>
                        </div>
                    </div>

                    @php     #0056b3
                        $convertedDate = date('d-m-Y', strtotime($userData->dob));
                    @endphp


                    <div class="col-md-6">
                        <div class="mb-3">
                        <label  class="form-label">DOB <span style="color: red"><small>*</small></span></label>
                        <input type="text" id="myDate" class="form-control" name="dob"  value="{{ $convertedDate }}" required>
                        </div>
                    </div>
                </div>

                   <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Designation</label>
                        <input type="text" class="form-control" name="designation" value="{{$userData->designation}}" >
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current company</label>
                        <input type="text"  class="form-control" name="current_company" value="{{$userData->current_company}}">
                        </div>
                    </div>
                </div>
                   <div class="row mx-3">
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current CTC</label>
                        <input type="text" class="form-control" value="{{$userData->current_ctc}}" name="current_ctc">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Expected CTC</label>
                        <input type="text"  class="form-control" name="expected_ctc" value="{{$userData->expected_ctc}}" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Notice period</label>
                        <input type="text"  class="form-control" name="notice_period" value="{{$userData->notice_period}}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Employment Type</label>
                        <input type="text"  class="form-control" name="employment_type" value="{{$userData->employment_type}}">
                        </div>
                    </div>
                </div>

                <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Educational qualification</label>
                        <input type="text" class="form-control" value="{{$userData->edu_qualification}}" name="edu_qualification">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Skills</label>
                        <input type="text"  class="form-control"  name="skills" value="{{$userData->skills}}">
                        </div>
                    </div>
                </div>

                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Work Experience</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="work_exp">{{$userData->work_exp}}</textarea>
                        </div>
                    </div>
                 </div>
                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Cover letter</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="cover_letter">{{$userData->cover_letter}}</textarea>
                        </div>
                    </div>
                 </div>

                  <div class="row mx-3">
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Area pincode</label>
                        <input type="text" class="form-control" value="{{$userData->pincode}}" maxlength="6" name="pincode" id="pincode">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current location</label>
                        <input type="text"  class="form-control"  name="current_location" value="{{$userData->current_location}}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Preferred location</label>
                        <input type="text"  class="form-control" name="preferred_location" value="{{$userData->preferred_location}}">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">PAN</label>
                        <input type="text"  class="form-control"  name="pan" maxlength="10" value="{{$userData->pan}}">
                        </div>
                    </div>
                </div>

                <div class="row mx-3">
                    <div class="col-md-4">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Post applied for</label>
                        <input type="text"  class="form-control"  name="post_applied_for" value="{{$userData->post_applied_for}}">
                        </div>
                    </div>
                    <div class="col-md-4">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Company applied for</label>
                        <input type="text"  class="form-control"  name="company_applied_for" value="{{$userData->company_applied_for}}">
                        </div>
                    </div>
                    <div class="col-md-4">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Interview status</label>
                          <select name="interview_status" id="interview_status" class="form-control">
                            <option value="" hidden>Select</option>
                            <option @if($userData->interview_status=="Conducted") selected @endif value="{{'Conducted'}}">Conducted</option>
                            <option @if($userData->interview_status=="Not Conducted") selected @endif value="{{'Not Conducted'}}">Not Conducted</option>
                            <option @if($userData->interview_status=="In review") selected @endif value="{{'In review'}}">In review</option>
                            <option @if($userData->interview_status=="Shortlisted") selected @endif value="{{'Shortlisted'}}">Shortlisted</option>
                            <option @if($userData->interview_status=="Selected") selected @endif value="{{'Selected'}}">Selected</option>
                            <option @if($userData->interview_status=="Rejected") selected @endif value="{{'Rejected'}}">Rejected</option>
                            <option @if($userData->interview_status=="Pending") selected @endif value="{{'Pending'}}">Pending</option>
                          </select>
                        </div>
                    </div>
                </div>
                <div class="row mx-3">
                        <div class="col-md-12">
                            <div class="mb-3">
                            <label for="formFile" class="form-label">Resume/CV
                                                 @if(file_exists(public_path('uploads/' . $userData->resume_attachment)))
                                                 <a class="" href="{{ asset('uploads/' . $userData->resume_attachment) }}" target="_blank">View Resume</a>
                                                 @endif
                            </label>
                            <input class="form-control" type="file" id="formFile" name="doc_attachment" accept=".pdf,.doc,.docx">
                            </div>
                        </div>
                </div>
                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Remarks</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="remarks">{{$userData->remarks}}</textarea>
                        </div>
                    </div>
                 </div>
                <div class="row mx-3 mb-3 text-center">
                    <div class="col-md-12">
                        <a href="{{ url()->previous() }}" class="btn btn-warning btn-sm">Back</a>
                        <button type="submit" class="btn btn-primary btn-sm">Save Data</button>
                    </div>
                </div>

                </form>



            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
  flatpickr("#myDate", {
    dateFormat: "d-m-Y" // or "m/d/Y", "Y-m-d", etc.
  });
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
  $('#mobile,#pincode').on('keypress', function (e) {
    if (e.which < 48 || e.which > 57) {
      e.preventDefault();
    }
  }).on('input', function () {
    this.value = this.value.replace(/\D/g, '');
  });
</script>
@endsection

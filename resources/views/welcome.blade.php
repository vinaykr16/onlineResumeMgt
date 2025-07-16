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
                <div class="card-header">{{ __('Welcome to the Online Resume Portal. Please fill out the form below to add your data.') }}</div>
                <form action="{{route('post-user-data')}}" method="POST"  enctype="multipart/form-data">
                @csrf
                <div class="row mt-3 mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label  class="form-label">Name <span style="color: red"><small>*</small></span></label>
                        <input type="text" class="form-control" name="name"   required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Email address <span style="color: red"><small>*</small></span></label>
                        <input type="email" class="form-control" name="email" id="exampleFormControlInput1"  required>
                        </div>
                    </div>
                </div>
                <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Mobile <span style="color: red"><small>*</small></span></label>
                        <input type="text" class="form-control" name="mobile_number" id="mobile"  maxlength="10"   required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">DOB <span style="color: red"><small>*</small></span></label>
                        <input type="text" id="myDate" class="form-control" name="dob" required>
                        </div>
                    </div>
                </div>

                   <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Designation</label>
                        <input type="text" class="form-control" name="designation" id="exampleFormControlInput1" >
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current company</label>
                        <input type="text"  class="form-control" name="current_company">
                        </div>
                    </div>
                </div>
                   <div class="row mx-3">
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current CTC</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="current_ctc">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Expected CTC</label>
                        <input type="text"  class="form-control" name="expected_ctc" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Notice period</label>
                        <input type="text"  class="form-control" name="notice_period" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Employment Type</label>
                        <input type="text"  class="form-control" name="employment_type" >
                        </div>
                    </div>
                </div>

                <div class="row mx-3">
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Educational qualification</label>
                        <input type="text" class="form-control" id="exampleFormControlInput1" name="edu_qualification">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Skills</label>
                        <input type="text"  class="form-control"  name="skills">
                        </div>
                    </div>
                </div>

                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Work Experience</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="work_exp"></textarea>
                        </div>
                    </div>
                 </div>
                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Cover letter</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="cover_letter"></textarea>
                        </div>
                    </div>
                 </div>

                  <div class="row mx-3">
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Area pincode</label>
                        <input type="text" class="form-control" id="pincode" maxlength="6" name="pincode">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Current location</label>
                        <input type="text"  class="form-control"  name="current_location">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Preferred location</label>
                        <input type="text"  class="form-control" name="preferred_location" >
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">PAN</label>
                        <input type="text"  class="form-control"  name="pan" maxlength="10">
                        </div>
                    </div>
                </div>

                <div class="row mx-3">
                    <div class="col-md-3">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Post applied for</label>
                        <input type="text"  class="form-control"  name="post_applied_for">
                        </div>
                    </div>
                    <div class="col-md-3">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Company applied for</label>
                        <input type="text"  class="form-control"  name="company_applied_for">
                        </div>
                    </div>
                    <div class="col-md-3">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Interview status</label>
                          <select name="interview_status" id="interview_status" class="form-control">
                            <option value="" hidden>Select</option>
                            <option value="{{'Conducted'}}">Conducted</option>
                            <option value="{{'Not Conducted'}}">Not Conducted</option>
                            <option value="{{'In review'}}">In review</option>
                            <option value="{{'Shortlisted'}}">Shortlisted</option>
                            <option value="{{'Selected'}}">Selected</option>
                            <option value="{{'Rejected'}}">Rejected</option>
                            <option value="{{'Pending'}}">Pending</option>
                            <option value="{{'Uploaded'}}">Uploaded</option>
                            <option value="{{'Shared'}}">Shared</option>
                          </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                         <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Offer Status</label>
                          <select name="offer_status" id="offer_status" class="form-control">
                            <option value="" hidden>Select</option>
                            <option value="{{'Offer Released'}}">Offer Released</option>
                            <option value="{{'Offer Accepted'}}">Offer Accepted</option>
                            <option value="{{'Offer Not Accepted'}}">Offer Not Accepted</option>
                            <option value="{{'Joined/Appointed'}}">Joined/Appointed</option>
                          </select>
                        </div>
                    </div>
                </div>
                <div class="row mx-3">
                        <div class="col-md-12">
                            <div class="mb-3">
                            <label for="formFile" class="form-label">Resume/CV</label>
                            <input class="form-control" type="file" id="formFile" name="doc_attachment" accept=".pdf,.doc,.docx">
                            </div>
                        </div>
                </div>
                 <div class="row mx-3">
                    <div class="col-md-12">
                        <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Remarks</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="remarks"></textarea>
                        </div>
                    </div>
                 </div>
                <div class="row mx-3 mb-3 text-center">
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary btn-sm">Submit</button>
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

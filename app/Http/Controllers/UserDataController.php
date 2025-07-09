<?php

namespace App\Http\Controllers;

use App\Models\UserData;
use Illuminate\Http\Request;

class UserDataController extends Controller
{
    public function store(Request $request)
    {


        // Validate the request data
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'mobile_number' => 'required|digits:10',
            'current_company' => 'nullable|string|max:255',
            // Add other fields as necessary
        ]);


         if ($request->has('dob')) {
            $formattedDate = \Carbon\Carbon::createFromFormat('d-m-Y', $request->dob)->format('Y-m-d');
            $request->merge(['dob' => $formattedDate]);
         }


         if ($request->has('doc_attachment')) {
            $file = $request->file('doc_attachment');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $request->merge(['resume_attachment' => $filename]);
         }
        // Process the data (e.g., save to database)
        UserData::create($request->except('_token'));

        // Redirect or return a response
        return redirect()->back()->with('success', 'Your data submitted successfully!');
    }
    public function destroy($id)
    {
        $userData = UserData::findOrFail($id);
        $userData->delete();

        return redirect()->back()->with('success', 'Profile deleted successfully!');
    }
    public function edit($id)
    {
        $userData = UserData::findOrFail($id);
        return view('edit-profile', compact('userData'));
    }
    public function update(Request $request)
    {
        // Validate the request data
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'mobile_number' => 'required|digits:10',
            // Add other fields as necessary
        ]);

        $userData = UserData::findOrFail($request->id);

        if ($request->has('dob')) {
            $formattedDate = \Carbon\Carbon::createFromFormat('d-m-Y', $request->dob)->format('Y-m-d');
            $request->merge(['dob' => $formattedDate]);
        }

        if ($request->hasFile('doc_attachment')) {
            $file = $request->file('doc_attachment');
            $filename = time() . '_' . $file->getClientOriginalName();
            $file->move(public_path('uploads'), $filename);
            $request->merge(['resume_attachment' => $filename]);
        }

        // Update the user data
        $userData->update($request->except('_token'));

        return redirect()->route('home')->with('success', 'Profile updated successfully!');
    }

    public function candidateReport()
    {
        // You can add any additional logic here if needed
        return view('candidate-report');
    }

    public function searchProfilesResult(Request $request)
    {
        $current_location = $request->input('current_location');
        $interview_status = $request->input('interview_status');
        $query = UserData::query();
        if ($request->filled('current_location')) {
            $query->where('current_location', 'LIKE', '%' . $request->input('current_location') . '%');
        }
        if ($request->filled('interview_status')) {
            $query->where('interview_status', $request->input('interview_status'));
        }
        $userData = $query->get();

        return view('candidate-report', compact('userData'));
    }
}

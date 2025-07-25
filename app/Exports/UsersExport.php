<?php

namespace App\Exports;

use App\Models\UserData;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
class UsersExport implements FromCollection,WithHeadings, WithStyles
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return UserData::get(['name', 'email', 'mobile_number', 'dob', 'designation', 'pan','current_company', 'current_ctc', 'expected_ctc', 'notice_period', 'employment_type', 'edu_qualification', 'skills', 'work_exp', 'cover_letter', 'pincode', 'current_location', 'preferred_location','company_applied_for','interview_status','offer_status','remarks']);
    }
    public function headings(): array
    {
        return [
            'Name',
            'Email',
            'Mobile Number',
            'Date of Birth',
            'Designation',
            'PAN Number',
            'Current Company',
            'Current CTC',
            'Expected CTC',
            'Notice Period',
            'Employment Type',
            'Educational Qualification',
            'Skills',
            'Work Experience',
            'Cover Letter',
            'Pincode',
            'Current Location',
            'Preferred Location',
            'Company applied for',
            'Interview status',
            'Offer status',
            'Remarks'
        ];
    }

    public function styles(Worksheet $sheet)
    {
        return [
            // Apply bold to first row (headings)
            1 => ['font' => ['bold' => true],'color' => ['argb' => 'blue']], // Blue color for headings

            // Optionally set column width, font size, etc.
            // 'A' => ['font' => ['size' => 12]],
        ];
    }
}

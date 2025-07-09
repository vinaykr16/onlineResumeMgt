<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserData extends Model
{
    use SoftDeletes;
        protected $table = 'user_data'; // 👈 this is the table used
        protected $fillable = [
            'name',
            'email',
            'mobile_number',
            'dob',
            'designation',
            'current_company',
            'current_ctc',
            'expected_ctc',
            'notice_period',
            'employment_type',
            'edu_qualification',
            'skills',
            'work_exp',
            'cover_letter',
            'pincode',
            'current_location',
            'preferred_location',
            'pan',
            'resume_attachment', // 👈 this is the file field
            'interview_status',
            'post_applied_for',
            'company_applied_for',
            'remarks'
        ];

}

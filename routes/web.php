<?php

use App\Exports\UsersExport;
use App\Http\Controllers\UserDataController;
use Illuminate\Support\Facades\Route;
use Maatwebsite\Excel\Facades\Excel;

Route::get('/', function () {
    return view('welcome');
})->name('/');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::post('/post-user-data', [UserDataController::class, 'store'])->name('post-user-data');


Route::middleware(['auth'])->group(function () {
    Route::get('/export-users', function () {
        return Excel::download(new UsersExport, 'users.xlsx');
    })->name('export.users');

    Route::get('/delete-profile/{id}', [UserDataController::class, 'destroy'])->name('delete.profile');
    Route::get('/edit-profile/{id}', [UserDataController::class, 'edit'])->name('edit.profile');
    Route::post('/post-edit-user-data', [UserDataController::class, 'update'])->name('post-edit-user-data');

    Route::get('/candidate-report', [UserDataController::class, 'candidateReport'])->name('candidate_report');
         Route::post('/searchProfilesResult', [UserDataController::class, 'searchProfilesResult'])->name('searchProfilesResult');

});

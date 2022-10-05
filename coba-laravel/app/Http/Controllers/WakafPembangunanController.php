<?php

namespace App\Http\Controllers;

use App\Models\Budgeting;
use App\Models\Donate;
use Illuminate\Support\Facades\DB;

class WakafPembangunanController extends Controller
{
    public function index()
    {
        return view('wakaf-pembangunan', [
            'title' => 'Wakaf Pembangunan',
            'active' => 'wakaf',
            'budgets' => Budgeting::sum('budget'),
            'donates' => Donate::sum('nominal')
        ]);
    }

    public function budgetingStatus()
    {
        return view('status-rab', [
            'title' => 'Status RAB',
            'active' => 'wakaf',
            'budgetings' => DB::table('vdonations')->get(),
        ]);
    }

    public function wakafList()
    {
        return view('wakaf-list', [
            'title' => 'Daftar Wakaf',
            'active' => 'wakaf',
            'wakaf' => Donate::all()
        ]);
    }

    public function wakafGuide()
    {
        return view('panduan-wakaf-pembangunan', [
            'title' => 'Panduan Wakaf Pembangunan',
            'active' => 'wakaf',
            'budgetings' => DB::table('vdonations')->get(),
        ]);
    }
}

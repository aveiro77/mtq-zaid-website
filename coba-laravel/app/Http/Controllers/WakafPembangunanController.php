<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Budgeting;
use App\Models\Donate;

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
}

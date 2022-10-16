<?php

namespace App\Http\Controllers;

use App\Models\Donate;
use App\Models\Budget;
use Illuminate\Http\Request;

class AdminDonateController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        if (request('budget')) {
            $budget = Budget::firstWhere('slug', request('budget'));
        }

        if (request('name')) {
            $name = Donate::firstWhere('name', request('name'));
        }

        if (request('address')) {
            $address = Donate::firstWhere('address', request('address'));
        }

        return view('dashboard.donate.index', [
            // 'donate' => Donate::all(),
            'donate' => Donate::latest()->filter(request(['search', 'budget', 'name', 'address']))->paginate(50),
            'total' => Donate::sum('nominal')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function show(Donate $donate)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function edit(Donate $donate)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Models\Donate $donate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Donate $donate)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function destroy(Donate $donate)
    {
        //
    }
}

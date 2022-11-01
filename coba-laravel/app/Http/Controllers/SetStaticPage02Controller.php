<?php

namespace App\Http\Controllers;

use App\Models\Set_static_page02;
use Illuminate\Http\Request;

class SetStaticPage02Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function show(Set_static_page02 $Set_static_page02)
    {
        return view('dashboard.settings.set-static-page02.show', [
            'staticpage' => $Set_static_page02::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function edit(Set_static_page02 $Set_static_page02)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Set_static_page02 $Set_static_page02)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Set_static_page02  $gallery
     * @return \Illuminate\Http\Response
     */
    public function destroy(Set_static_page02 $Set_static_page02)
    {
        //
    }
}

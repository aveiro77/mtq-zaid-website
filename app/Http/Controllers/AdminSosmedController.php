<?php

namespace App\Http\Controllers;

use App\Models\Sosmed;
use Illuminate\Http\Request;

class AdminSosmedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.settings.sosmed.index', [
            'title' => 'Setting Media Sosial',
            'sosmeds' => Sosmed::all(),
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
     * @param  \App\Models\Sosmed  $sosmed
     * @return \Illuminate\Http\Response
     */
    public function show(Sosmed $sosmed)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Sosmed  $sosmed
     * @return \Illuminate\Http\Response
     */
    public function edit(Sosmed $sosmed)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Sosmed  $sosmed
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request, Sosmed $sosmed)
    {
        $rules = [
            'link' => 'required|max:255',
        ];

        $validatedData =  $request->validate($rules);

        if (Sosmed::where('id', $id)->update($validatedData)) {
            return redirect('/dashboard/settings/sosmed')->with('success', 'A data has been updated!');
        } else {

            return redirect('/dashboard/settings/sosmed')->with('success', 'Update data Failed!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Sosmed  $sosmed
     * @return \Illuminate\Http\Response
     */
    public function destroy(Sosmed $sosmed)
    {
        //
    }
}

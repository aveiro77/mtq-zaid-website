<?php

namespace App\Http\Controllers;

use App\Models\Set_static_page01;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SetStaticPage01Controller extends Controller
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
     * @param  \App\Models\Set_static_page01  $set_static_page01
     * @return \Illuminate\Http\Response
     */
    public function show(Set_static_page01 $set_static_page01)
    {
        return view('dashboard.settings.set-static-page01.show', [
            'staticpage' => $set_static_page01::find(1)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Set_static_page01  $set_static_page01
     * @return \Illuminate\Http\Response
     */
    public function edit(Set_static_page01 $set_static_page01)
    {
        return view('dashboard.settings.set-static-page01.edit', [
            'sp01' => $set_static_page01::find(1)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Set_static_page01  $set_static_page01
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Set_static_page01 $set_static_page01)
    {
        $rules = [
            'title' => 'required|max:64',
            'subtitle' => 'required|max:128',
            'caption' => 'required',
            'image' => 'image|file|max:1024',
            'body' => 'required'
        ];

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('static-page-images');
        }

        Set_static_page01::where('id', 1)->update($validatedData);

        return redirect('/dashboard/settings/static-pages')->with('success', 'A static page been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Set_static_page01  $set_static_page01
     * @return \Illuminate\Http\Response
     */
    public function destroy(Set_static_page01 $set_static_page01)
    {
        //
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Set_static_page02;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
    public function edit($id, Set_static_page02 $Set_static_page02)
    {
        return view('dashboard.settings.set-static-page02.edit', [
            'gallery' => $Set_static_page02::find($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
        $gallery = Set_static_page02::find($id);

        $rules = [
            'image' => 'image|file|max:1024',
            'description' => 'required|max:128'
        ];

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('static-page-images');
        }

        Set_static_page02::where('id', $gallery->id)->update($validatedData);

        return redirect('/dashboard/settings/static-page/galeri/show')->with('success', 'A image has been updated!');
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

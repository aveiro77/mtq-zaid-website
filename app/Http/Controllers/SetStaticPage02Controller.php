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

    public function create2()
    {
        return view('dashboard.settings.set-static-page02.create2', [
            'title' => 'Input Metode Pembelajaran'
        ]);
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

    public function store2(Request $request)
    {
        $validatedData =  $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'image|file|max:1024'
        ]);

        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('metode-pendidikan-images');
        }

        Set_static_page02::create($validatedData);

        return redirect('/dashboard/settings/static-page/metode/show')->with('success', 'A new data has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function show(Set_static_page02 $set_static_page02)
    {
        return view('dashboard.settings.set-static-page02.show', [
            'staticpage' => $set_static_page02::all()
        ]);
    }

    public function show2(Set_static_page02 $set_static_page02)
    {
        return view('dashboard.settings.set-static-page02.show2', [
            'title' => 'Metode Pembelajaran',
            'staticpage' => $set_static_page02::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Set_static_page02  $Set_static_page02
     * @return \Illuminate\Http\Response
     */
    public function edit($id, Set_static_page02 $set_static_page02)
    {
        return view('dashboard.settings.set-static-page02.edit', [
            'gallery' => $set_static_page02::find($id)
        ]);
    }

    public function edit2($id, Set_static_page02 $set_static_page02)
    {
        $metode = [];
        if ($id >= 6) {
            $metode =  $set_static_page02::find($id);
        }

        return view('dashboard.settings.set-static-page02.edit2', [
            'title' => 'Edit Metode Pembelajaran',
            'metode' => $metode
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

    public function update2($id, Request $request)
    {
        $metode = Set_static_page02::find($id);

        $rules = [
            'image' => 'image|file|max:1024',
            'description' => 'required|max:128',
            'title' => 'required|max:128'
        ];

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('metode-pendidikan-images');
        }

        Set_static_page02::where('id', $metode->id)->update($validatedData);

        return redirect('/dashboard/settings/static-page/metode/show')->with('success', 'A image has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Set_static_page02  $gallery
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $set_static_page02 = Set_static_page02::find($id);

        //delete the file
        if ($set_static_page02->image) {
            Storage::delete($set_static_page02->image);
        }

        //delete data on table
        $set_static_page02->delete();
        // Donate::destroy($donate->id);

        return redirect('/dashboard/settings/static-page/metode/show')->with('success', 'A data has been deleted!');
    }
}

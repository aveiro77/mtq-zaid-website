<?php

namespace App\Http\Controllers;

use App\Models\Set_static_page03;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SetStaticPage03Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Set_static_page03 $set_static_page03)
    {
        return view('dashboard.settings.set-static-page03.index', [
            'staticpage' => $set_static_page03::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.settings.set-static-page03.create', [
            'categories' => [
                [
                    'id' => 1,
                    'name' => 'Program Reguler'
                ],
                [
                    'id' => 2,
                    'name' => 'Program Belajar Tahsin & Tahfidz Al Qur\'an'
                ],
            ]
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
        $validatedData =  $request->validate([
            'title' => 'required|max:128',
            'link' => 'required|max:255',
            'description' => 'required',
            'image' => 'image|file|max:1024',
            'category' => 'required'
        ]);

        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('program-pendidikan-images');
        }

        Set_static_page03::create($validatedData);

        return redirect('/dashboard/settings/static-page/program-pendidikan')->with('success', 'A new data has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Set_static_page03  $set_static_page03
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('dashboard.settings.set-static-page03.show', [
            'data' => Set_static_page03::find($id)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Set_static_page03  $set_static_page03
     * @return \Illuminate\Http\Response
     */
    public function edit($id, Set_static_page03 $set_static_page03)
    {
        return view('dashboard.settings.set-static-page03.edit', [
            'set_static_page03' => $set_static_page03::find($id),
            'categories' => [
                [
                    'id' => 1,
                    'name' => 'Program Reguler'
                ],
                [
                    'id' => 2,
                    'name' => 'Program Belajar Tahsin & Tahfidz Al Qur\'an'
                ],
            ]
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Set_static_page03  $set_static_page03
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
        $rules = [
            'title' => 'required|max:128',
            'link' => 'required|max:255',
            'description' => 'required',
            'image' => 'image|file|max:1024',
            'category' => 'required'
        ];

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('rab-images');
        }

        Set_static_page03::where('id', $id)->update($validatedData);

        return redirect('/dashboard/settings/static-page/program-pendidikan')->with('success', 'A data has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Set_static_page03  $set_static_page03
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $set_static_page03 = Set_static_page03::find($id);

        //delete the file
        if ($set_static_page03->image) {
            Storage::delete($set_static_page03->image);
        }

        //delete data on table
        $set_static_page03->delete();
        // Donate::destroy($donate->id);

        return redirect('/dashboard/settings/static-page/program-pendidikan')->with('success', 'A data has been deleted!');
    }
}

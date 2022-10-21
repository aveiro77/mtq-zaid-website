<?php

namespace App\Http\Controllers;

use App\Models\Donate;
use App\Models\Budget;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
        return view('dashboard.donate.create', [
            'budgets' => Budget::all()
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
            'name' => 'required|max:128',
            'address' => 'required|max:255',
            'phone' => 'required',
            'nominal' => 'required',
            'image' => 'image|file|max:1024',
            'budget_id' => 'required',
            'donate_date' => 'required'
        ]);

        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('bukti-wakaf-images');
        }

        $validatedData['showname'] = '1';

        Donate::create($validatedData);

        return redirect('/dashboard/donates')->with('success', 'A new data has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function show(Donate $donate)
    {
        return view('dashboard.donate.show', [
            'donate' => $donate
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('dashboard.donate.edit', [
            'donate' => Donate::find($id),
            'budgets' => Budget::all()
            // 'categories' => Donate::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Models\Donate $donate
     * @return \Illuminate\Http\Response
     */
    public function update($id, Request $request)
    {
        $donate = Donate::find($id);

        $rules = [
            'name' => 'required|max:128',
            'address' => 'required|max:255',
            'phone' => 'required',
            'nominal' => 'required',
            'image' => 'image|file|max:1024',
            'budget_id' => 'required',
            'donate_date' => 'required'
        ];

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('rab-images');
        }

        Donate::where('id', $donate->id)->update($validatedData);

        return redirect('/dashboard/donates')->with('success', 'A post has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Donate  $donate
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $donate = Donate::find($id);

        //delete the file
        if ($donate->image) {
            Storage::delete($donate->image);
        }

        //delete data on table
        $donate->delete();
        // Donate::destroy($donate->id);

        return redirect('/dashboard/donates')->with('success', 'A data has been deleted!');
    }
}

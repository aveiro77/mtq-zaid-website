<?php

namespace App\Http\Controllers;

use App\Models\Budget;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;

class AdminBudgetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return view('dashboard.budgets.index', [
            'budgets' => Budget::all(),
            'total' => Budget::sum('budget')
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.budgets.create');
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
            'description' => 'required|max:255',
            'slug' => 'required|unique:budgets',
            'image' => 'image|file|max:1024',
            'budget' => 'required'
        ]);

        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('rab-images');
        }

        Budget::create($validatedData);

        return redirect('/dashboard/budgets')->with('success', 'RAB baru telah dibuat!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Budget  $budget
     * @return \Illuminate\Http\Response
     */
    public function show(Budget $budget)
    {
        return view('dashboard.budgets.show', [
            'budget' => $budget
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Budget  $budget
     * @return \Illuminate\Http\Response
     */
    public function edit(Budget $budget)
    {
        return view('dashboard.budgets.edit', [
            'budget' => $budget
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Budget  $budget
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Budget $budget)
    {
        $rules = [
            'description' => 'required|max:255',
            'image' => 'image|file|max:1024',
            'budget' => 'required'
        ];

        if ($request->slug != $budget->slug) {
            $rules['slug'] = 'required|unique:budgets';
        }

        $validatedData =  $request->validate($rules);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validatedData['image'] = $request->file('image')->store('rab-images');
        }

        Budget::where('id', $budget->id)->update($validatedData);

        return redirect('/dashboard/budgets')->with('success', '1 RAB telah diedit.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Budget  $budget
     * @return \Illuminate\Http\Response
     */
    public function destroy(Budget $budget)
    {
        //delete the file
        if ($budget->image) {
            Storage::delete($budget->image);
        }

        //delete data on table
        Budget::destroy($budget->id);

        return redirect('/dashboard/budgets')->with('success', '1 RAB telah dihapus.');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Budget::class, 'slug', $request->description);
        return response()->json(['slug' => $slug]);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donate extends Model
{
    use HasFactory;

    // protected $with = ['budgeting', 'donations'];

    // public function scopeFilter($query, array $filters)
    // {
    //     $query->when($filters['search'] ?? false, function ($query, $search) {
    //         return $query->where(function ($query) use ($search) {
    //             $query->where('name', 'like', '%' . $search . '%')->orWhere('address', 'like', '%' . $search . '%');
    //         });
    //     });


    //     $query->when($filters['donations'] ?? false, fn ($query, $donations) => $query->whereHas('donations', fn ($query) => $query->where('budgeting_id', $donations)));
    // }

    public function budgeting()
    {
        return $this->belongsTo(Budgeting::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donate extends Model
{
    use HasFactory;

    protected $with = ['budgeting'];

    public function scopeFilter($query)
    {
        if (request('search')) {
            return $query->where('name', 'like', '%' . request('search') . '%')
                ->orWhere('address', 'like', '%' . request('search') . '%');
        }


        //$query->when($filters['donations'] ?? false, fn ($query, $donations) => $query->whereHas('donations', fn ($query) => $query->where('budgeting_id', $donations)));
    }

    public function budgeting()
    {
        return $this->belongsTo(Budgeting::class);
    }
}

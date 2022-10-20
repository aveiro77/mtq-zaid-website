<?php

namespace App\Models;

use App\Models\Budget;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Donate extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $with = ['budget'];

    public function scopeFilter($query)
    {
        if (request('search')) {
            return $query->where('name', 'like', '%' . request('search') . '%')
                ->orWhere('address', 'like', '%' . request('search') . '%');
        }


        //$query->when($filters['donations'] ?? false, fn ($query, $donations) => $query->whereHas('donations', fn ($query) => $query->where('budgeting_id', $donations)));
    }

    public function budget()
    {
        return $this->belongsTo(Budget::class);
    }
}

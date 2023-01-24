<?php

namespace App\Http\Controllers;

use App\Models\Budget;
use App\Models\Donate;
use App\Models\Set_static_page01;
use App\Models\Set_static_page03;
use App\Models\Set_static_page05;
use Illuminate\Support\Facades\DB;

class StaticPagesController extends Controller
{
    public function wakaf()
    {

        return view('wakaf-pembangunan', [
            'title' => 'Wakaf Pembangunan',
            'active' => 'wakaf',
            'budgets' => Budget::sum('budget'),
            'donates' => Donate::sum('nominal'),
            'static_page' => Set_static_page05::all(),
        ]);
    }

    public function budgetStatus()
    {
        $vdonations = DB::select(
            'SELECT
                                `a`.`id` AS `id`,
                                `a`.`description` AS `description`,
                                `a`.`slug` AS `slug`,
                                `a`.`budget` AS `budget`,
                                `b`.`donations` AS `donations`,
                                `a`.`unicode` AS `unicode`,
                                `a`.`cp_hp` AS `cp_hp`
                             FROM
                                (`marr2961_admin_zaid`.`budgets` `a`
                                    LEFT JOIN (SELECT `b`.`budget_id` AS `budget_id`, SUM(`b`.`nominal`) AS `donations`
                                               FROM `marr2961_admin_zaid`.`donates` `b`
                                               GROUP BY `b`.`budget_id`) `b` ON (`a`.`id` = `b`.`budget_id`))'
        );

        return view('status-rab', [
            'title' => 'Status RAB',
            'active' => 'wakaf',
            'budgets' => $vdonations
        ]);
    }

    public function wakafList()
    {

        // if (request('search')) {
        //     $wakaf->where('name', 'like', '%' . request('search') . '%')
        //         ->orWhere('address', 'like', '%' . request('search') . '%');
        // }

        return view('wakaf-list', [
            'title' => 'Daftar Wakaf',
            'active' => 'wakaf',
            // 'wakaf' => Donate::with('budget')->latest()->filter()->get()
            'wakaf' => Donate::with('budget')->latest()->filter()->paginate(25),
            'paginate' => 1

        ]);
    }

    public function wakafGuide()
    {

        $vdonations = DB::select(
            'SELECT
                                `a`.`id` AS `id`,
                                `a`.`description` AS `description`,
                                `a`.`slug` AS `slug`,
                                `a`.`budget` AS `budget`,
                                `b`.`donations` AS `donations`,
                                `a`.`unicode` AS `unicode`,
                                `a`.`cp_hp` AS `cp_hp`
                             FROM
                                (`marr2961_admin_zaid`.`budgets` `a`
                                    LEFT JOIN (SELECT `b`.`budget_id` AS `budget_id`, SUM(`b`.`nominal`) AS `donations`
                                               FROM `marr2961_admin_zaid`.`donates` `b`
                                               GROUP BY `b`.`budget_id`) `b` ON (`a`.`id` = `b`.`budget_id`))'
        );

        return view('panduan-wakaf-pembangunan', [
            'title' => 'Panduan Wakaf Pembangunan',
            'active' => 'wakaf',
            // 'budgets' => DB::table('vdonations')->get(),
            'budgets' => $vdonations,
        ]);
    }

    public function profile()
    {
        return view('profil', [
            'title' => 'Profil',
            'active' => 'profil',
            'static_page' => Set_static_page01::all(),
        ]);
    }

    public function contact()
    {
        return view('contact', [
            'title' => 'Kontak',
            'active' => 'kontak'
        ]);
    }


    public function educationPrograms()
    {
        return view('program-pendidikan', [
            'title' => ' - Program pendidikan',
            'active' => 'akademik',
            'programs' => Set_static_page03::all(),
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
}

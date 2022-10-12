<?php

namespace App\Http\Controllers;

use App\Models\Budgeting;
use App\Models\Donate;
use Illuminate\Support\Facades\DB;

class WakafPembangunanController extends Controller
{
    public function index()
    {

        return view('wakaf-pembangunan', [
            'title' => 'Wakaf Pembangunan',
            'active' => 'wakaf',
            'budgets' => Budgeting::sum('budget'),
            'donates' => Donate::sum('nominal')
            //'donates' => Donate::latest()->filter(request(['search', 'name', 'address']))->paginate(7)->withQueryString(), //agar paginationnya jalan ketika searching
        ]);
    }

    public function budgetingStatus()
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
                                (`wpu_blog`.`budgetings` `a`
                                    LEFT JOIN (SELECT `b`.`budgeting_id` AS `budgeting_id`, SUM(`b`.`nominal`) AS `donations`
                                               FROM `wpu_blog`.`donates` `b`
                                               GROUP BY `b`.`budgeting_id`) `b` ON (`a`.`id` = `b`.`budgeting_id`))'
        );

        return view('status-rab', [
            'title' => 'Status RAB',
            'active' => 'wakaf',
            'budgetings' => $vdonations
        ]);
    }

    public function wakafList()
    {
        return view('wakaf-list', [
            'title' => 'Daftar Wakaf',
            'active' => 'wakaf',
            'wakaf' => Donate::with('budgeting')->latest()->get()

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
                                (`wpu_blog`.`budgetings` `a`
                                    LEFT JOIN (SELECT `b`.`budgeting_id` AS `budgeting_id`, SUM(`b`.`nominal`) AS `donations`
                                               FROM `wpu_blog`.`donates` `b`
                                               GROUP BY `b`.`budgeting_id`) `b` ON (`a`.`id` = `b`.`budgeting_id`))'
        );

        return view('panduan-wakaf-pembangunan', [
            'title' => 'Panduan Wakaf Pembangunan',
            'active' => 'wakaf',
            // 'budgetings' => DB::table('vdonations')->get(),
            'budgetings' => $vdonations,
        ]);
    }
}

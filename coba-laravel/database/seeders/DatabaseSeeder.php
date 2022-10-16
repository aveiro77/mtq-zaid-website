<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use App\Models\Budget;
use App\Models\Donate;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        /* ganti pake factory */
        User::create([
            'name' => 'Jumhan Prayitno',
            'username' => 'jumhan',
            'email' => 'jumhan@gmail.com',
            'password' => bcrypt('jumhan'),
            'is_admin' => '1'
        ]);

        // this one put from the factory
        User::factory(3)->create();
        Donate::factory(200)->create();

        Category::create([
            'name' => 'Ulumul Quran',
            'slug' => 'ulumul-quran',
        ]);

        Category::create([
            'name' => 'Bahasa Arab',
            'slug' => 'bahasa-arab',
        ]);

        Category::create([
            'name' => 'Tauhid',
            'slug' => 'tauhid',
        ]);

        Post::factory(20)->create();

        Budget::create([
            'description' => 'Pekerjaan Persiapan/ Umum',
            'slug' => 'pekerjaan-persiapan-umum',
            'budget' => 44469600,
            'unicode' => '001',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Tanah',
            'slug' => 'pekerjaan-tanah',
            'budget' => 147182183,
            'unicode' => '002',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Struktur Lantai 1',
            'slug' => 'pekerjaan-struktur-lantai1',
            'budget' => 1555066206,
            'unicode' => '003',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Arsitektur Lantai 1',
            'slug' => 'pekerjaan-arsitektur-lantai1',
            'budget' => 485719171,
            'unicode' => '004',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Mekanikal & Elektikal Lantai 1',
            'slug' => 'pekerjaan-mekanikal-elektikal-lantai1',
            'budget' => 62997860,
            'unicode' => '005',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Struktur Lantai 2',
            'slug' => 'pekerjaan-struktur-lantai2',
            'budget' => 671046165,
            'unicode' => '006',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Arsitektur Lantai 2',
            'slug' => 'pekerjaan-arsitektur-lantai2',
            'budget' => 431774974,
            'unicode' => '007',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Mekanikal & Elektikal Lantai 2',
            'slug' => 'pekerjaan-mekanikal-elektikal-lantai2',
            'budget' => 69796870,
            'unicode' => '008',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Struktur Lantai 3',
            'slug' => 'pekerjaan-struktur-lantai3',
            'budget' => 671640160,
            'unicode' => '009',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Arsitektur Lantai 3',
            'slug' => 'pekerjaan-arsitektur-lantai3',
            'budget' => 458468141,
            'unicode' => '010',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Mekanikal & Elektikal Lantai 3',
            'slug' => 'pekerjaan-mekanikal-elektikal-lantai3',
            'budget' => 71657610,
            'unicode' => '011',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Struktur Lantai 4',
            'slug' => 'pekerjaan-struktur-lantai4',
            'budget' => 168593066,
            'unicode' => '012',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Arsitektur Lantai 4',
            'slug' => 'pekerjaan-arsitektur-lantai4',
            'budget' => 647962309,
            'unicode' => '013',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Mekanikal & Elektikal Lantai 4',
            'slug' => 'pekerjaan-mekanikal-elektikal-lantai4',
            'budget' => 100548150,
            'unicode' => '014',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Paving Block',
            'slug' => 'pekerjaan-paving-block',
            'budget' => 27238000,
            'unicode' => '015',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Pagar',
            'slug' => 'pekerjaan-pagar',
            'budget' => 103979559,
            'unicode' => '016',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pengadaan AC',
            'slug' => 'pengadaan-ac',
            'budget' => 167370000,
            'unicode' => '017',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Hydran',
            'slug' => 'pekerjaan-hydran',
            'budget' => 750000000,
            'unicode' => '018',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
        Budget::create([
            'description' => 'Pekerjaan Mebelair',
            'slug' => 'pekerjaan-mebelair',
            'budget' => 101900000,
            'unicode' => '019',
            'cp_hp' => '85740074567',
            'cp_name' => 'Fulan',
        ]);
    }
}

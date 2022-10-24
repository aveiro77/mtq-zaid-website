<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use App\Models\Budget;
use App\Models\Donate;
use App\Models\Set_static_page05;

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
            'name' => 'Nasihat',
            'slug' => 'nasihat',
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

        Set_static_page05::create([
            'title' => 'Investasikan Segera Harta Anda Sebagai Bekal di Akhirat Kelak Dengan Program Wakaf Tunai Pembangunan',
            'image' => '',
            'caption' => '',
            'navigate' => 'Wakaf -> Pembangunan Gedung Baru',
            'body' => '
            <blockquote class="blockquote my-4">“Perumpamaan (nafkah yang dikeluarkan oleh) orang-orang yang menafkahkan hartanya di jalan Allah adalah serupa dengan sebutir benih yang menumbuhkan tujuh bulir, pada tiap-tiap bulir: seratus biji. Allah melipat gandakan (ganjaran) bagi siapa yang Dia kehendaki. Dan Allah Maha Luas (kurnia-Nya) lagi Maha Mengetahui.”
            (QS. Al Baqarah: 261)</blockquote>
          <blockquote class="blockquote my-4">“Jika seseorang meninggal dunia, maka terputuslah amalannya kecuali tiga perkara (yaitu): sedekah jariyah, ilmu yang dimanfaatkan, atau do’a anak yang sholeh”
            (HR. Muslim no. 1631)</blockquote>
            <h3 class="mb-4">Wakaf itu Mudah dan Pahalanyapun Melimpah</h3>
            <p class="mb-4">Wakaf adalah amalan sedekah yang bersifat jariyah, meski usia terputus pahalanya mengalir terus menerus selama barang atau benda yang diwakafkan itu masih berguna dan bermanfaat. Selain mendapatkan bonus pahala mengalir di akhirat, muwakifpun akan mendapatkan keberkahan di dunia berupa keberlimpahan harta, jiwa yang bersih serta kebahagiaan yang tidak terputus karena muwakif telah mengeluarkan harta yang dia cintai di jalan Allah (menafkahkan di jalan Allah).</p>
            <p class="mb-4">Yayasan Zaid Bin Tsabit Radhiyallahu’anhu, Insyaa Allah akan membangun gedung 4 lantai di atas tanah wakaf dengan luas bangunan sekitar 1200 M2 yang letaknya di jalan Gajahmada barat, Tirto, Kota Pekalongan. Gedung baru ini selanjutnya akan kami pergunakan untuk pondok pesantren Markaz Tahfidzul Qur’an Zaid bin Tsabit Pekalongan dikarenakan santri yang mendaftar semakin banyak, sementara saat ini kami masih menyewa rumah untuk kegiatan belajar dan asrama santri, maka dari itu perlu adanya pembangunan gedung baru yang fungsinya untuk Asrama, Kelas, Kantor, Masjid dan lain sebagainya.Oleh karenanya kami mengajak kepada seluruh muhsinin untuk ikut membantu dan mewakafkan harta terbaiknya untuk bekal di akhirat kelak.
            </p>
          
          <blockquote class="blockquote my-4">Sementara ini lokasi pondok pesantren Markaz Zaid Bin Tsabit Pekalongan yang pertama terletak di jalan Teratai Gg. 7 Barat No. 42 Klego, Kota Pekalongan, sedangkan lokasi kedua dalam proses pembangunan gedung 4 lantai diatas tanah wakaf di jalan Gajah Mada Barat Kelurahan Tirto Pekalongan Timur Kota Pekalongan.</blockquote>
          
          <p class="mb-4">Untuk menyalurkan donasi Anda mohon untuk <strong>meluangkan waktu</strong> sejenak untuk membaca <strong>Petunjuk dan Rincian Anggaran </strong>dengan cara klik tombol "Panduan Wakaf" dibawah ini;</p>
          
          <div class="text-center">
            <a href="/panduan-wakaf-pembangunan" type="button" target="blank" class="btn btn-lg btn-info mb-4 justify-content-center">Panduan Wakaf</a>
          </div>

          <p class="mb-4">Jika Anda ada pertanyaan terkait proyek pembangunan gedung pondok pesantren Markaz Tahfid Al Qur’an Zaid Bin Tsabit silakan hubungi kontak berikut :</p>
          <ul>
            <li>Ust. Ahmad Rijal, Lc., M.H.I. (0856 9429 1964)</li>
            <li>Dr. Gholib Hasan (0815 6593 847)</li>
            <li>Setiyo Hermawan (0815 6593 847)
            </li>
          </ul>
          <p class="mb-5">Tunggu apa lagi, mari wakafkan harta terbaik Anda sebagai wujud kepedulian terhadap masa depan bangsa dan masyarakat.</p>
            ',
        ]);
    }
}

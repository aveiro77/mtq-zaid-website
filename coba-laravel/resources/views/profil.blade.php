@extends('layouts/main')
@section('container')  

{{-- <section class="py-5 bg-cover bg-gray">
    <div class="container py-5">
      <div aria-label="breadcrumb" class="nav">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="./">Home</a></li>
          <li aria-current="page" class="breadcrumb-item active">Text page</li>
        </ol>
      </div>
      <h1 class="lined">Text page</h1>
      <p class="lead my-4">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p>
    </div>
  </section> --}}
  <figure><img src="img/laman/jumbotron1.jpg" alt="" class="w-100">
    <figcaption class="text-muted text-center py-3 text-uppercase font-weight-bold small">Caption of the Image </figcaption>
  </figure>
  <section class="py-0">
    <div class="container py-0 pb-5">
      <div class="row">
        <div class="col-lg-8">
          <h2 class="my-0">PROFIL</h2>
          <p class="lead my-4">Pondok Pesantren Markaz Zaid bin Tsabit Radhiallahu’anhu</p>
          {{-- <ol>
            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
            <li>Aliquam tincidunt mauris eu risus.</li>
          </ol>
          <blockquote class="blockquote my-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</blockquote>
          <h3 class="mb-4">Header Level 3</h3> --}}
          <p>Pondok Pesantren Markaz Zaid bin Tsabit berdiri sejak bulan Dzulqo’dah 1436 H, bertepatan dengan bulan September 2015 M. Pondok Pesantren ini Adalah lembaga pendidikan islam yang memfokuskan kegiatannya pada pembinaan dan pengajaran dibidang Al Qur’an dan Bahasa Arab yang telah mendapat SK Kemenag Nomor : 3291/Kk.11.34/5/PP.00.7/09/2017 dan berada dibawah naungan Yayasan Zaid Bin Tsabit Radhiallahu’anhu dengan Akta Notaris Lies Andriani, SH. Nomor 14 Tanggal 20 Mei 2016 dan SK Kemenkumham RI Nomor AHU-0026.185.AH.01.04 Tahun 2016.</p>
        
            <p><strong>Visi : </strong> Sebagai lembaga pendidikan Islam yang memiliki keunggulan dalam program tahfidz Al Qur’an dan program Bahasa Arab.</p>
            <p><strong>Misi : </strong> Menyelenggarakan pendidikan dibidang Al Qur’an dan mencetak guru-guru Al Qur’an serta mengembangkan proses pembelajaran dengan metode dan sarana modern.</p>
          
        </div>
      </div>
    </div>
  </section>

@endsection
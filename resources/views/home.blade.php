   
@extends('layouts/main')
@section('container')  
    <section style="background: url(img/home/slider1.png)" class="py-5 bg-cover bg-center">
      <div class="hero-overlay"></div>
      <div class="container py-5 text-white text-center">
        <h1 class="text-shadow hero-heading">MTQ Zaid bin Tsabit</h1>
        <p class="text-shadow lead">Markaz Tahfidz Al Qur'an Zaid bin Tsabit Radhiallahu’anhu</p>
        <p class="text-shadow lead">Jalan Teratai Gg. 7 Barat No. 42 Klego, Pekalongan, Jawa Tengah, 51124</p>
      </div>
    </section>
    
    <section class="py-5">
      <div class="container py-5">
        <h2 class="mb-4">PROFIL PONPES</h2>
        <p class="lead">Pondok Pesantren Markaz Tahfidz Qur’an Bersanad dan Bahasa Arab Zaid Bin Tsabit Pekalongan adalah lembaga pendidikan islam yang memfokuskan kegiatannya pada pembinaan dan pengajaran dibidang Al Qur’an dan Bahasa Arab.</p>
        <p class="text-small">yang telah mendapat SK Kemenag Nomor : 3291/Kk.11.34/5/PP.00.7/09/2017 dan berada dibawah naungan Yayasan Zaid Bin Tsabit Radhiallahu’anhu dengan Akta Notaris Lies Andriani, SH. Nomor 14 Tanggal 20 Mei 2016 dan SK Kemenkumham RI Nomor AHU-0026.185.AH.01.04 Tahun 2016.</p>
        <a href="/profil" class="btn btn-outline-primary btn-sm">Baca selengkapnya</a>
      </div>
    </section>
    
    <section class="bg-gray py-5">
      <div class="container py-5">
        <div class="row">
          <?php $count = 1 ?>
          @foreach($posts as $post)
            @if($count<=3)
              <div class="col-lg-4 mb-4 mb-lg-0">
                @if($post->image)
                  <a href="/posts/{{ $post->slug }}" class="d-block">
                    <img src="{{ asset('storage/'.$post->image) }}" alt="{{  $post->category->name }}" class="img-fluid mb-4">
                  </a>
                  {{-- @else
                  <a href="/posts/{{ $post->slug }}" class="d-block">
                    <img src="https://picsum.photos/1200/700?random=2" alt="{{  $post->category->name }}" class="img-fluid mb-4">
                  </a> --}}
                @endif
                <h3 class="h5 mb-1"><a href="/posts/{{ $post->slug }}" class="text-dark">{{ $post->title }}</a></h3>
                <small class="text-muted">
                  <p>by. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $post->created_at->diffForHumans() }}</p>
                </small>
                <p class="text-small">{{ $post->excerpt }}</a>
              </div>
            @endif
          <?php $count++ ?>
          @endforeach
        </div>
      </div>
    </section>

            <!--<div class="icon mb-4"><i class="pe-7s-alarm"></i></div>-->
            <!--<div class="icon mb-4"><i class="pe-7s-cloud"></i></div>-->
            <!--<div class="icon mb-4"><i class="pe-7s-coffee"></i></div>-->
            <!--<div class="icon mb-4"><i class="pe-7s-monitor"></i></div>-->
            <!--<div class="icon mb-4"><i class="pe-7s-signal"></i></div>-->
            <!--<div class="icon mb-4"><i class="pe-7s-id"></i></div>-->
            
    <section class="py-5">
      <div class="container py-5">
        <h2 class="mb-5">Metode Pembelajaran</h2>
        <div class="row mb-2">
        
          @foreach($gallery as $metode)
            @if($metode->id > 6)
              <div class="col-lg-4 col-md-6 mb-4">
                <div class="mb-4"><img src="{{ asset('storage/'.$metode->image) }}" alt="icon {{ $metode->title }}" class="img-fluid"></div>
                <h5 class="lined mb-4">{{ $metode->title }}</h5>
                <p class="text-muted text-small">{{ $metode->description }}</p>
              </div>
            @endif
          @endforeach

        </div>
      </div>
    </section>

    <section class="py-5 bg-gray">
      <div class="container py-5">
        <h2 class="lined mb-4">Galeri Foto</h2>
        <!-- <p class="lead">You can make also a portfolio or image gallery.</p> -->

        <div class="row">
          
          @foreach ($gallery as $item)
            @if($item->id <= 6)
              <a href="{{ asset('storage/'.$item->image) }}" data-lightbox="gallery" data-title="{{ $item->description }}" class="col-lg-4 col-sm-6 p-0">
                <img src="{{ asset('storage/'.$item->image) }}" alt="gallery-photos" class="img-fluid">
              </a>
            @endif
          @endforeach
        </div>
      </div>
    </section>
@endsection
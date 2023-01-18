@extends('layouts/main')
@section('container')
<section class="py-5 bg-cover bg-gray">
    <div class="container py-5">
      {{-- <div aria-label="breadcrumb" class="nav">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/">Home</a></li>
          <li aria-current="page" class="breadcrumb-item active">Kontak</li>
        </ol>
      </div> --}}
      <h1 class="lined">Hubungi kami</h1>
      {{-- <p class="lead my-4">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.</p> --}}
    </div>
  </section>
  <section class="py-5">
    <div class="container py-5">
      <div class="row">
        <div class="col-lg-4">
          <div class="row">
            <div class="col-lg-12 col-md-6 mb-4">
              <div class="icon mb-4">
                {{-- <i class="pe-7s-map-2"></i> --}}
                <i class="pe-7s-map-2"></i>
              </div>
              <h5 class="lined mb-4">Alamat</h5>
              <p class="mb-0 text-small">Jalan Teratai Gg. 7 Barat No. 42 Klego</p>
              <p class="mb-0 text-small">Kec. Pekalongan Timur</p>
              <p class="mb-0 text-small"><strong>Kota Pekalongan, Jawa Tengah </strong></p>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="row">
            <div class="col-lg-12 col-md-6 mb-4">
              <div class="icon mb-4"><i class="pe-7s-phone"></i></div>
              <h5 class="lined mb-4">Telepon</h5>
              <p class="mb-3 text-small">Silakan hubungi nomor-nomor berikut:</p>
              <p class="text-small mb-0">Ust Ahmad Rijal, Lc. MHI, <span class="font-weight-bold">+6285 6942 9196 4</span></p>
              <p class="text-small mb-0">Dr. Gholib Hasan, MARS, <span class="font-weight-bold">+62 815 6500 357</span></p>
              <p class="text-small mb-0">Setiyo Hermawan, ST, <span class="font-weight-bold">+62 815 6593 847</span></p>
              <p class="text-small mb-0">Ahmad Haris, <span class="font-weight-bold">+62 878 3242 2999</span></p>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="row">
            <div class="col-lg-12 col-md-6 mb-4">
              <div class="icon mb-4"><i class="pe-7s-mail-open"></i></div>
              <h5 class="lined mb-4">Surat Elektronik</h5>
              <p class="mb-3 text-small">Silakan hubungi kami melalului surel berikut:</p>
              <ul>
                <li><a href="#" class="font-weight-bold text-small">zaidbintsabitpekalongan@gmail.com</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.0530461570493!2d109.67907461537501!3d-6.884249495025413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7025e0c989faf3%3A0x2d05a18258b40e70!2sMarkaz%20Tahfidz%20Qur&#39;an%20Zaid%20Bin%20Tsabit!5e0!3m2!1sid!2sid!4v1663898320327!5m2!1sid!2sid" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </section>
@endsection
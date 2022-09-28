@extends('layouts/main')
@section('container')  
<section class="py-5">
    <div class="container py-5">
      
      <div class="container py-5 bg-dark">
        <header class="text-center text-white">
            <h2 class="display-5">Wakaf Berdasarkan Uraian Pekerjaan</h2>
            <p class="lead mb-1">Mohon untuk menambahkan kode unik berupa 3 angka pada 3 digit terakhir nominal wakaf.</p>
            <p class="font-italic">
              Contoh: kode unik 003, wakaf senilai Rp. 500.000,- maka nominal transfer menjadi Rp. 500.003,-
            </p>
        </header>
    
        <div class="row py-4">
            <div class="col-lg-8 mx-auto">
                <div class="card shadow mb-4">
                    <div class="card-body p-3">
                      <h4>Pekerjaan Persiapan/ Umum</h4>
                      <p>Kode unik : 001</p>
                        <!-- Animated progress bars-->
                        <div style="height: 8px" class="progress rounded-pill">
                            <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%" class="progress-bar progress-bar-striped progress-bar-animated rounded-pill"></div>
                        </div>
                        <a href="http://wa.me/6281228899970" target="blank" type="button" class="btn btn-sm btn-primary mt-4">Konfirmasi</a>
                    </div>
                </div>
                <div class="card shadow mb-4">
                    <div class="card-body p-3">
                      <h4>Pekerjaan Tanah</h4>
                      <p>Kode unik : 002</p>
                        <!-- Animated progress bars-->
                        <div style="height: 8px" class="progress rounded-pill">
                            <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%" class="progress-bar progress-bar-striped progress-bar-animated rounded-pill"></div>
                        </div>

                        <button type="button" class="btn btn-sm btn-primary mt-4">Konfirmasi</button>
                    </div>
                </div>
                <div class="card shadow mb-4">
                    <div class="card-body p-3">
                      <h4>Pekerjaan Struktur Lantai 1</h4>
                      <p>Kode unik : 003</p>
                        <!-- Animated progress bars-->
                        <div style="height: 8px" class="progress rounded-pill">
                            <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%" class="progress-bar progress-bar-striped progress-bar-animated rounded-pill"></div>
                        </div>

                        <button type="button" class="btn btn-sm btn-primary mt-4">Konfirmasi</button>
                    </div>
                </div>
                
            </div>
        </div>
      </div>

    </div>
  </section>
@endsection
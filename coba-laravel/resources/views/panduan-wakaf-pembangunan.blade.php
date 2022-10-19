@extends('layouts/main')
@section('container')  
<section class="py-5">
    <div class="container py-5">
      
      <div class="container py-5 bg-dark">
        <header class="text-center text-white">
            <h2 class="display-5">Wakaf Berdasarkan Uraian Pekerjaan</h2>
        </header>
    
        <div class="row py-4">
            <div class="col-lg-8 mx-auto">

              <p class="lead mb-1 text-white mb-2">
                Anda dapat memilih uraian pekerjaan yang ingin Anda bantu, caranya dengan melakukan transfer kesalah satu rekening kami dan pada berita transfer diketik kode RAB misal : "001".<br>
Kode RAB dapat Anda lihat dibawah halam ini.
Setelah transfer wakaf silahkan melakukan konfirmasi dengan mengisi form konfirmasi wakaf.<br>
<a href="" target="blank" class="text-warning">Link Konfirmasi Wakaf</a>
            </p>

                @foreach ($budgets as $rab)
                  <div class="card shadow mb-4">
                    <div class="card-body p-3">
                      <h4>{{ $rab->description }}</h4>
                      <p>Anggaran  : Rp. {{ number_format($rab->budget,2,",",".") }} <br> Kode RAB : <strong> {{ $rab->unicode }} </strong></p>
                        <!-- Animated progress bars-->
                        <div style="height: 8px" class="progress rounded-pill">
                            <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: {{ ($rab->donations/$rab->budget)*100 }}%" class="progress-bar progress-bar-striped progress-bar-animated rounded-pill"></div>
                        </div>
                        {{-- <a href="http://wa.me/62{{ $rab->cp_hp }}" target="blank" type="button" class="btn btn-sm btn-primary mt-4" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Konfirmasi setelah transfer wakaf">Konfirmasi</a> --}}
                    </div>
                  </div>
                @endforeach

            </div>
        </div>
      </div>

    </div>
  </section>
@endsection
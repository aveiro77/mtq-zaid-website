@extends('layouts/main')
@section('container')  

  <section class="py-5 bg-cover bg-gray">
    <div class="container py-5">
      <h1 class="lead"><strong>Laporan Keuangan</strong></h1>
      <div class="row">
        <div class="col-lg-4">
          <div aria-label="breadcrumb" class="nav">
            <ol class="breadcrumb">
              <li aria-current="page" class="breadcrumb-item active">Kebutuhan Dana <strong>(100%)</strong></li>
            </ol>
          </div>
          <h2 class="lined text-info">Rp. {{ number_format($budgets,2,",",".") }}</h2>
        </div>
        <div class="col-lg-4">
          <div aria-label="breadcrumb" class="nav">
            <ol class="breadcrumb">
              <li aria-current="page" class="breadcrumb-item active">Telah Terpenuhi <strong>({{ round(($donates/$budgets)*100, 1) }}%)</strong></li>
            </ol>
          </div>
          <h2 class="lined text-success">Rp. {{ number_format($donates,2,",",".") }}</h2>
        </div>
        <div class="col-lg-4">
          <div aria-label="breadcrumb" class="nav">
            <ol class="breadcrumb">
              <li aria-current="page" class="breadcrumb-item active">Kekurangan <strong>({{ round((($budgets-$donates)/$budgets)*100, 1) }}%)</strong></li>
            </ol>
          </div>
          <h2 class="lined text-danger">Rp. {{ number_format($budgets-$donates,2,",",".") }}</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12 text-center">
          <div class="btn-group mt-5" role="group">
            <a href="/status-rab" target='blank'type="button" class="btn btn-outline-primary">Status RAB</a>
            <a href="/daftar-wakaf" type="button" class="btn btn-outline-primary">Daftar Wakaf</a>
            <a href="/panduan-wakaf-pembangunan" type="button" class="btn btn-outline-primary">Panduan Wakaf</a>
          </div>
        </div>
      </div>

    </div>
  </section>

  @foreach ($static_page as $static)

  <section class="py-2">
    <div class="container py-2">
      <h2 class="my-4">{{ $static->title }}</h2>
      <div class="row">
        <div class="col-lg-8">

          <figure class="text-center mt-4">
            <img src="{{ asset('storage/'.$static->image) }}" alt="{{ $static->caption }}" class="figure-img img-fluid">
            <figcaption class="text-muted text-center py-1 text-uppercase font-weight-bold small">{{ $static->caption }}</figcaption>
          </figure>

          {!! $static->body !!}

        </div>
      </div>
    </div>
  </section>

  @endforeach

@endsection
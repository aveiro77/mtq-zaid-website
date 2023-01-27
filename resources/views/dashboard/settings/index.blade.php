@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">
        Halaman Statis
        {{-- {{ auth()->user()->name }} --}}
    </h1>
</div> 

@if(session()->has('success')) 

    <div class="alert alert-success alert-dismissible fade show col-lg-8" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

@endif

<div class="table-responsive col-lg-8">
    <table class="table table-striped table-sm table-bordered">
        <thead>
          <tr class="text-center">
            <th scope="col">Halaman</th>
            <th scope="col">Navigasi</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
          <tr>
            <td>Profil</td>
            <td>Beranda</td>
            <td>
              <a href="/dashboard/settings/static-page/profile/show" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/settings/static-page/profile/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
              {{-- <form action="/dashboard/budgets/" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0" onclick="return confirm('1 RAB akah dihapus, Anda yakin?') "><span data-feather="x-circle"></span></button>
              </form> --}}
            </td>
          </tr>

          <tr>
            <td>Galeri</td>
            <td>Beranda</td>
            <td>
              <a href="/dashboard/settings/static-page/galeri/show" class="badge bg-info"><span data-feather="eye"></span></a>
            
            </td>
          </tr>
          <tr>
            <td>Metode Pembelajaran</td>
            <td>Beranda</td>
            <td>
              <a href="/dashboard/settings/static-page/metode/show" class="badge bg-info"><span data-feather="eye"></span></a>
            </td>
          </tr>
          <tr>
            <td>Program Pendidikan</td>
            <td>Akademik <span data-feather="arrow-right"></span> Program Pendidikan</td>
            <td>
              <a href="/dashboard/settings/static-page/program-pendidikan" class="badge bg-info"><span data-feather="eye"></span></a>
            </td>
          </tr>
          <tr>
            <td>Pengajar & Staff</td>
            <td>Akademik <span data-feather="arrow-right"></span> Pengajar & Staff</td>
            <td>
              <!--<a href="#" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="#" class="badge bg-warning"><span data-feather="edit"></span></a>-->
            </td>
          </tr>
          <tr>
            <td>Pembangunan Gedung Baru</td>
            <td>Wakaf <span data-feather="arrow-right"></span> Pembangunan Gedung Baru</td>
            <td>
              <a href="/dashboard/settings/static-page/pembangunan-gedung/show" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/settings/static-page/pembangunan-gedung/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Operasional Pondok</td>
            <td>Wakaf <span data-feather="arrow-right"></span> Operasional Pondok</td>
            <td>
              <!--<a href="#" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="#" class="badge bg-warning"><span data-feather="edit"></span></a>-->
            </td>
          </tr>
          <tr>
            <td>Kontak</td>
            <td>Kontak</td>
            <td>
              <!--<a href="#" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="#" class="badge bg-warning"><span data-feather="edit"></span></a>-->
            </td>
          </tr>
          
        </tbody>
      </table>
  </div>
@endsection

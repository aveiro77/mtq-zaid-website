@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">
        Halaman Statis
        {{-- {{ auth()->user()->name }} --}}
    </h1>
</div> 

<div class="table-responsive col-lg-8">
    <table class="table table-striped table-sm table-bordered">
        <thead>
          <tr class="text-center">
            <th scope="col">Navigasi</th>
            <th scope="col">Halaman</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
          <tr>
            <td>Beranda</td>
            <td>Profil</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
              {{-- <form action="/dashboard/budgets/" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0" onclick="return confirm('1 RAB akah dihapus, Anda yakin?') "><span data-feather="x-circle"></span></button>
              </form> --}}
            </td>
          </tr>

          <tr>
            <td>Beranda</td>
            <td>Galeri</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Akademik <span data-feather="arrow-right"></span> Kurikulum</td>
            <td>Kurikulum</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Akademik <span data-feather="arrow-right"></span> Pengajar & Staff</td>
            <td>Pengajar & Staff</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Wakaf <span data-feather="arrow-right"></span> Pembangunan Gedung Baru</td>
            <td>Pembangunan Gedung Baru</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Wakaf <span data-feather="arrow-right"></span> Operasional Pondok</td>
            <td>Operasional Pondok</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          <tr>
            <td>Kontak</td>
            <td>Kontak</td>
            <td align="center">
              <a href="/dashboard/budgets/" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/budgets/" class="badge bg-warning"><span data-feather="edit"></span></a>
            </td>
          </tr>
          
        </tbody>
      </table>
  </div>
@endsection

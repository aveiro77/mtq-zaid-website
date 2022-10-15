@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Daftar Wakaf</h1>
</div> 

<div class="table-responsive">

  <a href="/dashboard/donate/create" class="btn btn-sm btn-primary mb-3">Tambah Wakaf</a>

  @if(session()->has('success')) 

    <div class="alert alert-success alert-dismissible fade show col-lg-8" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

  @endif

  <p>Total Wakaf : Rp. {{ number_format($total,2,",",".") }}</p>

  <div class="table-responsive col-lg">
    <table class="table table-striped table-sm table-bordered">
        <thead>
          <tr class="text-center">
            <th scope="col">#</th>
            <th scope="col">Tanggal</th>
            <th scope="col">Nama</th>
            <th scope="col">Alamat</th>
            <th scope="col">Tlp/hp</th>
            <th scope="col">Wakaf (Rp)</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
        @foreach ($donate as $wakaf)
            
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $wakaf->donate_date }}</td>
            <td>{{ $wakaf->name }}</td>
            <td>{{ $wakaf->address }}</td>
            <td>{{ $wakaf->phone }}</td>
            <td align="right">{{ number_format($wakaf->nominal,2,",",".") }}</td>
            <td align="center">
              <a href="/dashboard/categories/{{ $wakaf }}" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/categories/{{ $wakaf }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
              <form action="/dashboard/categories/{{ $wakaf }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?') "><span data-feather="x-circle"></span></button>
              </form>
            </td>
          </tr>
        @endforeach  
          
        </tbody>
      </table>

      {{ $donate->links() }}

  </div>
    
  </div>

@endsection

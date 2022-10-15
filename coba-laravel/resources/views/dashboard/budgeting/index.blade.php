@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">RAB</h1>
</div> 

<div class="table-responsive">

  <a href="/dashboard/budgeting/create" class="btn btn-sm btn-primary mb-3">Tambah RAB</a>

  @if(session()->has('success')) 

    <div class="alert alert-success alert-dismissible fade show col-lg-8" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

  @endif

  <p>Total RAB : Rp. {{ number_format($total,2,",",".") }}</p>

  <div class="table-responsive col-lg-8">
    <table class="table table-striped table-sm table-bordered">
        <thead>
          <tr class="text-center">
            <th scope="col">#</th>
            <th scope="col">Uraian Pekerjaan</th>
            <th scope="col">Anggaran (Rp)</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
        @foreach ($budgeting as $rab)
            
          <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $rab->description }}</td>
            <td align="right">{{ number_format($rab->budget,2,",",".") }}</td>
            <td align="center">
              <a href="/dashboard/categories/{{ $rab->slug }}" class="badge bg-info"><span data-feather="eye"></span></a>
              <a href="/dashboard/categories/{{ $rab->slug }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
              <form action="/dashboard/categories/{{ $rab->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?') "><span data-feather="x-circle"></span></button>
              </form>
            </td>
          </tr>
        @endforeach  
          
        </tbody>
      </table>
  </div>
    
  </div>

@endsection

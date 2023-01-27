@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">{{ $title }}</h1>
</div> 

<div class="table-responsive">

  <a href="/dashboard/settings/static-page/metode/create" class="btn btn-sm btn-primary mb-3">Tambah Metode</a>

  @if(session()->has('success')) 

    <div class="alert alert-success alert-dismissible fade show col-lg-6" role="alert">
      {{ session('success') }}
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

  @endif


  <div class="table-responsive col-lg-12">
    <table class="table table-striped table-sm table-bordered">
        <thead>
          <tr class="text-center">
            <th scope="col">Metode</th>
            <th scope="col">Deskripsi</th>
            <th scope="col">Image</th>
            <!--<th scope="col" width='10px'>Link</th>-->
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
            @foreach ($staticpage as $item)    
                @if($item->id > 6)
                    <tr>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->description }}</td>
                        <td>
                          <img src="{{ asset('storage/'.$item->image) }}" class="img-preview img-fluid" width="100px">
                        </td>
                        <td align="center">
                            <a href="/dashboard/settings/static-page/metode/{{ $item->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                            <form action="/dashboard/settings/static-page/metode/{{ $item->id }}/delete" method="post" class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="badge bg-danger border-0" onclick="return confirm('1 data akan dihapus, Anda yakin?') "><span data-feather="x-circle"></span></button>
                            </form>
                        </td>
                    </tr>
                @endif
            @endforeach  
        </tbody>
      </table>
  </div>
    
  </div>

@endsection

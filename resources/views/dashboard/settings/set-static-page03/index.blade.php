@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Program Pendidikan</h1>
</div> 

<div class="table-responsive">

  <a href="/dashboard/settings/static-page/program-pendidikan/create" class="btn btn-sm btn-primary mb-3">Tambah Program</a>

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
            <th scope="col">Nama Program</th>
            <th scope="col">Kategori</th>
            <!--<th scope="col" width='10px'>Link</th>-->
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
        
          @foreach ($staticpage as $item)    
            <tr>
              <td>{{ $item->title }}</td>
              <td>{{ $item->category }}</td>
              <!--<td><a href="https://{{ $item->link }}" target="_blank">{{ $item->link }}</a></td>-->
              <td align="center">
                <a href="/dashboard/settings/static-page/program-pendidikan/{{ $item->id }}/show" class="badge bg-info"><span data-feather="eye"></span></a>
                <a href="/dashboard/settings/static-page/program-pendidikan/{{ $item->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/settings/static-page/program-pendidikan/{{ $item->id }}/delete" method="post" class="d-inline">
                  @method('delete')
                  @csrf
                  <button class="badge bg-danger border-0" onclick="return confirm('1 program akan dihapus, Anda yakin?') "><span data-feather="x-circle"></span></button>
                </form>
              </td>
            </tr>
          @endforeach  
        
          
        </tbody>
      </table>
  </div>
    
  </div>

@endsection

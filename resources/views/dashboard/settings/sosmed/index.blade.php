@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">{{ $title }}</h1>
</div> 

<div class="table-responsive">

  <!--<a href="/dashboard/settings/static-page/program-pendidikan/create" class="btn btn-sm btn-primary mb-3">Tambah Program</a>-->

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
            <th scope="col">Nama</th>
            <th scope="col">Link</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
         
        
          @foreach ($sosmeds as $item)    
            <tr>
              <td>{{ $item->name }}</td>
              <td>{{ $item->link }}</td>
              <td align="center">
                <!--<a href="" class="badge bg-info" ><span data-feather="eye"></span></a>-->
                <a href="" class="badge bg-warning" data-bs-toggle="modal" data-bs-target="#editModal{{ $item->id }}"><span data-feather="edit"></span></a>

                <!-- Modal -->
                <div class="modal fade" id="editModal{{ $item->id }}" tabindex="-1" aria-labelledby="editModal{{ $item->id }}Label" aria-hidden="true">
                    <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h5 class="modal-title" id="editModal{{ $item->id }}Label">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form method="post" action="/dashboard/settings/sosmed/{{ $item->id }}/update" class="mb-5">
                        @method('put')
                        @csrf
                            <div class="modal-body">
                                <label for="link" class="form-label">Enter Link {{ $item->name }}</label>
                                <input type="text" id="link" name="link" class="form-control text-center" value="{{ old('link', $item->link) }}">
                                <div class="form-text">
                                Example : https://{{ strtolower($item->name) }}.com/yourusername
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>

              </td>
            </tr>
          @endforeach  
        
          
        </tbody>
      </table>
  </div>
    
  </div>

@endsection

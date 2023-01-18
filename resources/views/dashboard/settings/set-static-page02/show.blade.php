@extends('dashboard.layouts.main')

@section('container')  


    <div class="album py-5 bg-white">

        @if(session()->has('success')) 

            <div class="alert alert-success alert-dismissible fade show col-lg" role="alert">
              {{ session('success') }}
              <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        
        @endif

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

            @foreach ($staticpage as $item)
                
                <div class="col">
                    <div class="card shadow-sm">
                    

                        @if($item->image)
                            <img src="{{ asset('storage/'.$item->image) }}" class="img-fluid">
                        @else
                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
                                    <title>Placeholder</title>
                                    <rect width="100%" height="100%" fill="#55595c"/>
                                    <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail.</text>
                                </svg>
                        @endif

                        <div class="card-body">
                            <p class="card-text">{{ $item->description }}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary disabled">Delete</button>
                                    <a href="/dashboard/settings/static-page/galeri/{{$item->id}}/edit" type="button" class="btn btn-sm btn-outline-secondary">Edit</a>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

            @endforeach
        </div>
            
    </div>
  @endsection
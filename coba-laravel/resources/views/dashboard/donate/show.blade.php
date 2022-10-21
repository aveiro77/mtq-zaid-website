@extends('dashboard.layouts.main')

@section('container')    

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>Detail Wakaf</h2>

            <a href="/dashboard/donates" class="btn btn-sm btn-primary"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/donates/{{ $donate->id }}/edit" class="btn btn-sm btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/donates/{{ $donate->id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-sm btn-danger border-0" onclick="return confirm('Are you sure?') "><span data-feather="x-circle"></span>Delete</button>
            </form>
            
            <div class="row mt-3">
                <div class="col-lg-10">
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                          <div>
                            <small class="text-muted">Nama</small>
                            <h6 class="my-0">{{ $donate->name }}</h6>
                          </div>
                          {{-- <span class="text-muted">$12</span> --}}
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                          <div>
                            <small class="text-muted">Alamat</small>
                            <h6 class="my-0">{{ $donate->address }}</h6>
                          </div>
                          {{-- <span class="text-muted">$8</span> --}}
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                          <div>
                            <small class="text-muted">Kontak</small>
                            <h6 class="my-0">{{ $donate->phone }}</h6>
                          </div>
                          {{-- <span class="text-muted">$5</span> --}}
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                          <div>
                            <small class="text-muted">Tanggal Wakaf</small>
                            <h6 class="my-0">{{ $donate->donate_date }}</h6>
                          </div>
                          {{-- <span class="text-muted">$5</span> --}}
                        </li>
                        @if($donate->image)
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <small class="text-muted">Bukti</small>
                                @if($donate->image)
                                <div style="max-height: 350px; overflow:hidden;">
                                    <img src="{{ asset('storage/'.$donate->image) }}" class="img-fluid mt-3">
                                </div>
                                @endif
                            </div>
                        </li>
                        @endif
                        <li class="list-group-item d-flex justify-content-between">
                          <h6 class="my-0">{{ $donate->budget->description }}</h6>
                          <strong>{{ number_format($donate->nominal,2,",",".") }}</strong>
                        </li>
                      </ul>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection

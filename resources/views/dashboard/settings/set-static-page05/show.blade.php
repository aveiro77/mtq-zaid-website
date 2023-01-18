@extends('dashboard.layouts.main')

@section('container')    

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>{{ $staticpage->title }}</h2>

            <a href="/dashboard/settings/static-pages" class="btn btn-sm btn-primary"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/settings/static-page/pembangunan-gedung/edit" class="btn btn-sm btn-warning"><span data-feather="edit"></span> Edit</a>
            
            @if($staticpage->image)
                <div style="overflow:hidden;">
                    <img src="{{ asset('storage/'.$staticpage->image) }}" class="img-fluid mt-3">
                    <figcaption class="text-muted text-center py-1 text-uppercase font-weight-bold small">{{ $staticpage->caption }}</figcaption>
                </div>
            @endif

            <article class="my-3">
                {!! $staticpage->body !!}
            </article>
            
        </div>
    </div>
</div>


@endsection

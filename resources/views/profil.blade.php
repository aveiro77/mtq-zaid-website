@extends('layouts/main')
@section('container')  

  @foreach($static_page as $static)

    <figure><img src="{{ asset('storage/'.$static->image) }}" alt="{{ $static->caption }}" class="w-100">
      <figcaption class="text-muted text-center py-3 text-uppercase font-weight-bold small">{{ $static->caption }}</figcaption>
    </figure>
    <section class="py-0">
      <div class="container py-0 pb-5">
        <div class="row">
          <div class="col-lg-8">
            <h2 class="my-0">{{ $static->title }}</h2>
            <p class="lead my-4">{{ $static->subtitle }}</p>
            
            <article>
              {!! $static->body !!}
            </article>
            
          </div>
        </div>
      </div>
    </section>

  @endforeach

@endsection
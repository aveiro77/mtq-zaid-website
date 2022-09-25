@extends('layouts/main')
@section('container')

    {{-- <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2>{{ $post->title }}</h2>

                <p>
                    by. <a href="/posts?authors={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in
                    <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a>
                </p>
                
                @if($post->image)
                    <div style="max-height: 350px; overflow:hidden;">
                        <img src="{{ asset('storage/'.$post->image) }}" class="img-fluid">
                    </div>
                @else
                    <img src="https://picsum.photos/1200/400?random=2" class="img-fluid">
                @endif

                <article class="my-3">
                    {!! $post->body !!}
                </article>
                
                <a href="/blog" class="text-decoration-none d-block mt-3">back to posts</a>
            </div>
        </div>
    </div> --}}
    <div class="container py-5">

        @if($post->image)
            <figure>
                <img src="{{ asset('storage/'.$post->image) }}" class="w-100">
            </figure>
        @else
            <figure>
                <img src="https://picsum.photos/1200/400?random=2" class="w-100">
            </figure>
        @endif
        
            <section>
                <div class="container py-5">
                    <div class="row">
                        <div class="col-lg-8">
                            <h1>{{ $post->title }}</h1>
                            <p>
                                <small class="text-muted">
                                    <p>by. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a> {{ $post->created_at->diffForHumans() }}</p>
                                </small>
                            </p>
                            <article class="my-3">
                                {!! $post->body !!}
                            </article>
                        </div>
                        <div class="col-lg-4 p-5 bg-light rounded">
                            <div id="headings" class="card mb-4 mt-5">
                                <div class="card-header">Pilih Kategori</div>
                                    <div class="card-body">
                                        <ul>
                                            @foreach ($categories as $category)
                                                <li><a href="/posts?category={{ $category->slug }}">{{ $category->name }}</a></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
      </div>

@endsection
@extends('dashboard.layouts.main')

@section('container')    

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>{{ $post->title }}</h2>

            <a href="/dashboard/posts" class="btn btn-sm btn-primary"><span data-feather="arrow-left"></span> Back to my posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-sm btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-sm btn-danger border-0" onclick="return confirm('Are you sure?') "><span data-feather="x-circle"></span>Delete</button>
            </form>
            
            @if($post->image)
                <div style="max-height: 350px; overflow:hidden;">
                    <img src="{{ asset('storage/'.$post->image) }}" class="img-fluid mt-3">
                </div>
            @else
                <img src="https://picsum.photos/1200/400?random=2" class="img-fluid mt-3">
            @endif

            <article class="my-3">
                {!! $post->body !!}
            </article>
            
        </div>
    </div>
</div>


@endsection

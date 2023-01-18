@extends('dashboard.layouts.main')

@section('container')    

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>{{ $budget->description }}</h2>

            <a href="/dashboard/budgets" class="btn btn-sm btn-primary"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/budgets/{{ $budget->slug }}/edit" class="btn btn-sm btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/budgets/{{ $budget->slug }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-sm btn-danger border-0" onclick="return confirm('Anda yakin?') "><span data-feather="x-circle"></span>Delete</button>
            </form>
            
            @if($budget->image)
                <div style="max-height: 350px; overflow:hidden;">
                    <img src="{{ asset('storage/'.$budget->image) }}" class="img-fluid mt-3">
                </div>
            @endif

            {{-- <article class="my-3">
                {!! $post->body !!}
            </article> --}}
            
        </div>
    </div>
</div>


@endsection

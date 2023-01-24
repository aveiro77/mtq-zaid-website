@extends('dashboard.layouts.main')

@section('container')    

<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h2>{{ $data->title }}</h2>

            <a href="/dashboard/settings/static-page/program-pendidikan/" class="btn btn-sm btn-primary"><span data-feather="arrow-left"></span> Back</a>
            <a href="/dashboard/settings/static-page/program-pendidikan/{{ $data->id }}/edit" class="btn btn-sm btn-warning"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/settings/static-page/program-pendidikan/{{ $data->id }}/delete" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-sm btn-danger border-0" onclick="return confirm('Are you sure?') "><span data-feather="x-circle"></span>Delete</button>
            </form>
            
            @if($data->image)
                <div style="overflow:hidden;">
                    <img src="{{ asset('storage/'.$data->image) }}" class="img-fluid mt-3">
                </div>
            @endif

            <article class="my-3">
                {!! $data->description !!}
            </article>

            
        </div>
    </div>
</div>


@endsection

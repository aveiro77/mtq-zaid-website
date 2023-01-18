@extends('layouts/main')

@section('container')

<div class="row justify-content-center mt-5 mb-5">
    <div class="col-lg-4">
         
        @if(session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif

        @if(session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('loginError') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif

        <div id="forms" class="card mb-4">
            <div class="card-header">Login Form</div>
            <div class="card-body">
            <form action="/login" method="post">
                @csrf
                <fieldset>
                  <div class="form-group">
                    <label for="email">Email address</label>
                    <input id="email" name="email" type="text" placeholder="Enter email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" id="email"  placeholder="name@example.com" autofocus required">
                    @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" type="password" placeholder="Password" class="form-control">
                  </div>
                  <button type="submit" class="btn btn-primary">Login</button>
                </fieldset>
                <!-- <small class="d-block  mt-2">Not registered? <a href="/register">Register Now!</a></small> -->
              </form>           
            </div>
        </div>


    </div>
</div>

@endsection
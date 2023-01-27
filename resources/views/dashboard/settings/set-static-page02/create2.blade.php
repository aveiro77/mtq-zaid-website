@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">{{ $title }}</h1>
</div> 

<div class="col-lg-8">
    <form method="post" action="/dashboard/settings/static-page/metode/store" class="mb-5" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
          <label for="title" class="form-label">Judul</label>
          <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title') }}" required autofocus>
          @error('title')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>
        <div class="mb-3">
          <label for="image" class="form-label">
            Image <br>
            <small class="text-muted">Recommended dimension is 105x105 pixel</small>
          </label>
          <img class="img-preview img-fluid mb-3 col-sm-2">
          <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
          @error('image')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <!--<div class="mb-3">
          <label for="body" class="form-label">Deskripsi</label>
          @error('description')
            <p class="text-danger">{{ $message }}</p>
          @enderror
          <input id="description" type="hidden" name="description" value="{{ old('description') }}">
          <trix-editor input="description"></trix-editor>
        </div>-->
        
          <div class="mb-3">
            <label for="description" class="form-label">Deskripsi</label>
            <textarea class="form-control" id="description" name="description" rows="3">{{ old('description') }}</textarea>
            @error('description')
              <p class="text-danger">{{ $message }}</p>
            @enderror
          </div>

        <button type="submit" class="btn btn-sm btn-primary">Simpan</button>
    </form>
</div>

<script>

    /*document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })*/


    function previewImage(){
      const image = document.querySelector('#image');
      const imgPreview =  document.querySelector('.img-preview');

      imgPreview.style.display = 'block';

      const oFReader = new FileReader();
      oFReader.readAsDataURL(image.files[0]);

      oFReader.onload = function(oFREvent) {
        imgPreview.src = oFREvent.target.result;
      }
    }

</script>

@endsection

@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Edit Image</h1>
</div> 

<div class="col-lg-8">
    <form method="post" action="/dashboard/settings/static-page/galeri/{{ $gallery->id }}/update" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
          <label for="image" class="form-label">
            Image <br>
            <small class="text-muted">Recommended dimension is 1200x800 pixel</small>
          </label>
          <input type="hidden" name="oldImage" value="{{ $gallery->image }}">
          @if($gallery->image)
            <img src="{{ asset('storage/'.$gallery->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
          @else
            <img class="img-preview img-fluid mb-3 col-sm-5">
          @endif
          <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
          @error('image')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        
        <div class="mb-3">
            <label for="description" class="form-label">Deskripsi</label>
            @error('description')
              <p class="text-danger">{{ $message }}</p>
            @enderror
            <textarea class="form-control" id="description" name="description" rows="3">{{ old('body', $gallery->description) }}</textarea>
        </div>

        <a href="/dashboard/settings/static-page/galeri/show" class="btn btn-sm btn-success"><span data-feather="arrow-left"></span> Batal</a>
        <button type="submit" class="btn btn-sm btn-primary"><span data-feather="save"></span> Simpan</button>
    </form>
</div>

<script>

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })

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

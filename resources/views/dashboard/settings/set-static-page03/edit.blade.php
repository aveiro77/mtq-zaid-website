@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">{{ $title }}</h1>
</div> 

<div class="col-lg-8">
    <form method="post" action="/dashboard/settings/static-page/program-pendidikan/{{ $set_static_page03->id }}/update" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
          <label for="title" class="form-label">Title</label>
          <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title', $set_static_page03->title) }}" required autofocus>
          @error('title')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="category" class="form-label">Kelompok</label>
            <select class="form-select" name="category">
                @foreach ($categories as $category)
                  @if(old('category', $set_static_page03->category) == $category['name'])
                    <option value="{{ $category['name'] }}" selected>{{ $category['name'] }}</option>
                  @else
                    <option value="{{ $category['name'] }}">{{ $category['name'] }}</option>
                  @endif
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="link" class="form-label">
              Link Pendaftaran
              <br><small class="text-muted">Contoh : wa.me/6285999990</small>
            </label>
            <input type="text" class="form-control @error('link') is-invalid @enderror" id="link" name="link" value="{{ old('link', $set_static_page03->link) }}" required>
            @error('link')
              <div class="invalid-feedback">
                {{ $message }}
              </div>
            @enderror
          </div>

        <div class="mb-3">
          <label for="image" class="form-label">
            Image <br>
            <small class="text-muted">Recommended dimension is 1200x700 pixel</small>
          </label>
          <input type="hidden" name="oldImage" value="{{ $set_static_page03->image }}">
          @if($set_static_page03->image)
            <img src="{{ asset('storage/'.$set_static_page03->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
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
          <input id="description" type="hidden" name="description" value="{{ old('description', $set_static_page03->description) }}">
          <trix-editor input="description"></trix-editor>
        </div>

        <button type="submit" class="btn btn-sm btn-primary">Update</button>
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

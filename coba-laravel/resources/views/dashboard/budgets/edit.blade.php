@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Edit RAB</h1>
</div> 

<div class="col-lg-8">
    <form method="post" action="/dashboard/budgets/{{ $budget->slug }}" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
          <label for="description" class="form-label">Uraian Pekerjaan</label>
          <input type="text" class="form-control @error('description') is-invalid @enderror" id="description" name="description" value="{{ old('description', $budget->description) }}" required autofocus>
          @error('description')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="budget" class="form-label">Anggaran</label>
          <input type="text" class="form-control @error('budget') is-invalid @enderror" id="budget" name="budget" value="{{ old('budget', $budget->budget) }}" required autofocus>
          @error('budget')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="slug" class="form-label">Slug</label>
          <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" value="{{ old('slug', $budget->slug) }}" readonly required>
          @error('slug')
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
          <input type="hidden" name="oldImage" value="{{ $budget->image }}">
          @if($budget->image)
            <img src="{{ asset('storage/'.$budget->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
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

        <button type="submit" class="btn btn-sm btn-primary">Update RAB</button>
    </form>
</div>

<script>
    //untuk menjalankan method sluggable (generate slug)
    const description = document.querySelector('#description');
    const slug = document.querySelector('#slug');

    description.addEventListener('change', function(){
        fetch('/dashboard/budgets/checkSlug?description='+description.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

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

@extends('dashboard.layouts.main')

@section('container')    
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
  <h1 class="h2">Input wakaf</h1>
</div> 

<div class="col-lg-8">
    <form method="post" action="/dashboard/donates/{{ $donate->id }}" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
          <label for="name" class="form-label">Nama</label>
          <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" value="{{ old('name', $donate->name) }}" required autofocus>
          @error('name')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="address" class="form-label">Alamat</label>
          <input type="text" class="form-control @error('address') is-invalid @enderror" id="address" name="address" value="{{ old('address', $donate->address) }}" required>
          @error('address')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="phone" class="form-label">Kontak</label>
          <input type="text" class="form-control @error('phone') is-invalid @enderror" id="phone" name="phone" value="{{ old('phone', $donate->phone) }}" required>
          @error('phone')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="nominal" class="form-label">Jumlah Wakaf</label>
          <input type="number" class="form-control @error('nominal') is-invalid @enderror" id="nominal" name="nominal" value="{{ old('nominal', $donate->nominal) }}" required>
          @error('nominal')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>

        <div class="mb-3">
          <label for="donate_date" class="form-label">Tanggal</label>
          <input type="date" class="form-control @error('donate_date') is-invalid @enderror" id="donate_date" name="donate_date" value="{{ old('donate_date', $donate->donate_date) }}" required>
          @error('donate_date')
            <div class="invalid-feedback">
              {{ $message }}
            </div>
          @enderror
        </div>
        

        <div class="mb-3">
          <label for="budget_id" class="form-label">RAB</label>
            <select class="form-select" name="budget_id">
                @foreach ($budgets as $budget)
                  @if(old('budget_id', $donate->budget_id) == $budget->id)
                    <option value="{{ $budget->id }}" selected>{{ $budget->description }}</option>
                  @else
                    <option value="{{ $budget->id }}">{{ $budget->description }}</option>
                  @endif
                @endforeach
            </select>
        </div>

        <div class="mb-3">
          <label for="image" class="form-label">
            Bukti <br>
            <small class="text-muted">Recommended dimension is 1200x700 pixel</small>
          </label>
          <img class="img-preview img-fluid mb-3 col-sm-5">
          <input type="hidden" name="oldImage" value="{{ $donate->image }}">
          @if($donate->image)
            <img src="{{ asset('storage/'.$donate->image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
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
        <button type="submit" class="btn btn-sm btn-primary">Simpan</button>
    </form>
</div>

<script>

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

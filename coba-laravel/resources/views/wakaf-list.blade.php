@extends('layouts/main')
@section('container')
    <div class="container py-5">
      <h1>Daftar Wakaf</h1>
      {{-- <p>Rincian RAB dan kebutuhan</p> --}}

      <div class="row justify-content-left mb-3">
        <div class="col-md-6">
            {{-- <form action="/posts" method="get"> --}}
            <form action="/daftar-wakaf" method="get">
               
                @if (request('name'))
                    <input type="hidden" name="name" value="{{ request('name') }}">
                @endif

                @if (request('address'))
                    <input type="hidden" name="address" value="{{ request('address') }}">
                @endif

                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Ketik kata kunci pencarian" name="search" value="{{ request('search') }}">
                    <button class="btn btn-success" type="submit" >Cari</button>
                </div>
            </form>
        </div>
    </div>      
      <div class="row">
        <div class="col-lg">
          <table class="table table-hover table-sm table-bordered">
            <thead class="bg-dark text-white">
              <tr>
                <th>Tanggal</th>
                <th>Nama</th>
                <th>Alamat</th>
                {{-- <th>Telepon</th> --}}
                <th>Peruntukan</th>
                <th class="text-right">Jumlah (Rp)</th>
              </tr>
            </thead>
            <tbody>
                <?php $i=1 ?>
                <?php $tsummary=0 ?>

                @if($wakaf->count())
                  @foreach($wakaf as $w)
                      <tr>
                          <td class="text-small">{{ date_format(date_create($w->donate_date),"d M y") }}</td>
                          <td class="text-small">{{ $w->name }}</td>
                          <td class="text-small">{{ $w->address }}</td>
                          {{-- <td class="text-small">{{ $w->phone }}</td> --}}
                          {{-- <td class="text-small">{{ sprintf("%03d", $w->budgeting_id) }}</td> --}}
                          <td class="text-small">{{ $w->budget->description }}</td>
                          <td class="text-small text-right">{{ number_format($w->nominal,2,",",".") }}</td>
                      </tr>
                      <?php $i++ ?>
                      <?php $tsummary=$tsummary+$w->nominal ?>
                  @endforeach
                  <tr class="bg-dark text-white">
                    <td class="text-center" colspan="4">TOTAL</td>
                    <td class="text-right">{{ number_format($tsummary,2,",",".") }}</td>
                  </tr> 
                @else
                  <tr>
                    <td colspan="5" class="text-center">No data found</td>
                  </tr>
                @endif   
                
                @if($paginate)
                  {{ $wakaf->links() }}
                @endif

            </tbody>
          </table>
        </div>
      </div>
    </div>
@endsection
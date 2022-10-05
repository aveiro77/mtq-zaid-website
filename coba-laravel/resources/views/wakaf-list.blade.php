@extends('layouts/main')
@section('container')
    <div class="container py-5">
      <h1>Daftar Wakaf</h1>
      {{-- <p>Rincian RAB dan kebutuhan</p> --}}
      
      <div class="row">
        <div class="col-lg">
          <table class="table table-hover table-sm">
            <thead class="bg-dark text-white">
              <tr>
                <th>#</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>Telepon</th>
                <th>Kode</th>
                <th>Tanggal</th>
                <th class="text-right">Jumlah (Rp)</th>
              </tr>
            </thead>
            <tbody>
                <?php $i=1 ?>
                <?php $tsummary=0 ?>
                @foreach($wakaf as $w)
                    <tr>
                        <td>{{ $i }}</td>
                        <td>{{ $w->name }}</td>
                        <td>{{ $w->address }}</td>
                        <td>{{ $w->phone }}</td>
                        <td>{{ sprintf("%03d", $w->budgeting_id) }}</td>
                        <td>{{ date_format(date_create($w->donate_date),"d/m/Y") }}</td>
                        <td class="text-right">{{ number_format($w->nominal,2,",",".") }}</td>
                    </tr>
                    <?php $i++ ?>
                    <?php $tsummary=$tsummary+$w->nominal ?>
                @endforeach
                <tr class="bg-dark text-white">
                  <td class="text-center" colspan="6">TOTAL</td>
                  <td class="text-right">{{ number_format($tsummary,2,",",".") }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
@endsection
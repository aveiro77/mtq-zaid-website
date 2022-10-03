@extends('layouts/main')
@section('container')
    <div class="container py-5">
      <h1>Status RAB</h1>
      {{-- <p>Rincian RAB dan kebutuhan</p> --}}
      
      <div class="row">
        <div class="col-lg">
          <table class="table table-hover">
            <thead class="bg-dark text-white">
              <tr>
                <th>#</th>
                <th>Uraian Pekerjaan</th>
                <th class="text-right">Kebutuhan Biaya (IDR)</th>
                <th class="text-right">Telah Terpenuhi (IDR)</th>
                <th>Prosentase</th>
              </tr>
            </thead>
            <tbody>
                <?php $i=1 ?>
                @foreach($budgetings as $rab)
                    <tr>
                        <td>{{ $i }}</td>
                        <td>{{ $rab->description }}</td>
                        <td class="text-right">{{ number_format($rab->budget,2,",",".") }}</td>
                        <td class="text-right">0</td>
                        <td class="text-right">10%</td>
                    </tr>
                    <?php $i++ ?>
                @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
@endsection
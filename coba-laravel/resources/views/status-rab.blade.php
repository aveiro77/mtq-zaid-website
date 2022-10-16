@extends('layouts/main')
@section('container')
    <div class="container py-5">
      <h1>Status RAB</h1>
      {{-- <p>Rincian RAB dan kebutuhan</p> --}}
      
      <div class="row">
        <div class="col-lg">
          <table class="table table-hover table-sm">
            <thead class="bg-dark text-white">
              <tr>
                <th>#</th>
                <th>Uraian Pekerjaan</th>
                <th class="text-right">Kebutuhan Biaya (IDR)</th>
                <th class="text-right">Telah Terpenuhi (IDR)</th>
                <th class="text-right">Prosentase</th>
              </tr>
            </thead>
            <tbody>
                <?php $i=1 ?>
                <?php $tbudgets=0 ?>
                <?php $tdonations=0 ?>
                @foreach($budgets as $rab)
                    <tr>
                        <td>{{ $i }}</td>
                        <td><a href="/daftar-wakaf/{{ $rab->slug }}"> {{ $rab->description }}</a></td>
                        <td class="text-right">{{ number_format($rab->budget,2,",",".") }}</td>
                        <td class="text-right">{{ number_format($rab->donations,2,",",".") }}</td>
                        <td class="text-right">{{ number_format(($rab->donations/$rab->budget)*100,2,",",".") }}%</td>
                    </tr>
                    <?php $i++ ?>
                    <?php $tbudgets=$tbudgets+$rab->budget ?>
                    <?php $tdonations=$tdonations+$rab->donations ?>
                @endforeach
                <tr class="bg-dark text-white">
                  <td>#</td>
                  <td>TOTAL</td>
                  <td class="text-right">{{ number_format($tbudgets,2,",",".") }}</td>
                  <td class="text-right">{{ number_format($tdonations,2,",",".") }}</td>
                  <td class="text-right">{{ number_format(($tdonations/$tbudgets)*100,2,",",".") }}%</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
@endsection
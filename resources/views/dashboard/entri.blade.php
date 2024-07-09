@extends('template')
 
@section('content')
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">

                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Monitoring Alur Entri Pengolahan ST2023</h1>
                    </div>
                </div> 
                <!-- Small boxes (Stat box) -->
                <div class="row">
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                      <div class="inner">
                        <h3>{{$total_sls}}</h3>

                        <p>{{$total_sls}} NBS Sebagai Target Entri</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-bag"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info</a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>{{$total_entri}}</h3>

                        <p>{{$total_entri/$total_sls*100}}% NBS Telah di Entri</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info</a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>{{$total_sedang_entri}}</h3>

                        <p>{{$total_sedang_entri/$total_sls*100}}% NBS Sedang Berlangsung di Entri</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info</a>
                    </div>
                  </div>
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3>{{$total_sisa}}</h3>

                        <p>{{$total_sisa/$total_sls*100}}% NBS Belum di Entri</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-pie-graph"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                </div>


                <div class="card">
                    <div class="card-body">
                        <table id="example3" class="display responsive nowrap" width="100%">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th>Kecamatan</th>                                    
                                    <th>Kelurahan</th>                                    
                                    <th>NBS</th>
                                    <th>PML</th>                                    
                                    <th>PPL</th>                                   
                                    <th>Tgl Mulai Entri</th>
                                    <th>Petugas Entri</th>
                                    <th>Status Entri</th>
                                    <th>Jumlah UTP</th>
                                    <th>Jumlah DS.Utama</th>
                                    <th>Jumlah DS.Cadangan</th>
                                    <th>Jumlah Peta WB</th>
                            </tr>    
                            </thead>
                            <tbody>
                                @foreach ($alurentri as $al)
                                <tr>
                                    <td class="text-center">{{ ++$i }}</td>
                                    <td>
                                        @if ($al->kode_kec == '010') 
                                            Padang Panjang Barat
                                        @elseif ($al->kode_kec == '020') 
                                            Padang Panjang Timur
                                        @endif
                                    </td>
                                    <td>{{ $al->nmkelurahan}} ( {{ $al->kode_kel}})</td>
                                    <td>{{ $al->kode_nbs}}</td>
                                    <td>{{ $al->nama_pml}}</td>
                                    <td>{{ $al->nama_ppl}}</td>
                                    <td>{{ $al->tgl_mulai_entri}}</td>
                                    <td>{{ $al->nama_petugas_entri}}</td>
                                    <td>
                                        @if ($al->tgl_selesai_entri == NULL && $al->petugas_entri != NULL) 
                                            Sedang Entri 
                                        @elseif ($al->tgl_selesai_entri != '0000-00-00' && $al->petugas_entri != NULL) 
                                            Sudah
                                        @else
                                            Belum
                                        @endif
                                    </td>
                                    <td>{{ $al->jml_terima_UTP}}</td>                                    
                                    <td>{{ $al->jml_terima_ds_utama}}</td>                                    
                                    <td>{{ $al->jml_terima_ds_cad}}</td>                                 
                                    <td>{{ $al->jml_terima_petawb}}</td> 
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>  
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
    </div>
@endsection

@push('scripts')
<script type="text/javascript">
  $(document).ready(function() {
    $('#example3').DataTable({
      "scrollX": true,
       responsive: true,
       dom: 'Bfrtip',
        columnDefs: [
            {
                targets: 1,
                className: 'noVis'
            }
        ],
        buttons: [
            {
                extend: 'colvis',
                columns: ':not(.noVis)'
            }
        ]
    });
  } );
</script>
@endpush
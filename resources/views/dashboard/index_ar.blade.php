@extends('template')
 
@section('content')
<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">

                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Monitoring Alur Penerimaan Dokumen Pengolahan ST2023</h1>
                    </div>
                </div> 
                <!-- Small boxes (Stat box) -->
                <div class="row">
                  <div class="col-lg-4 col-4">
                    <!-- small box -->
                    <div class="small-box bg-info">
                      <div class="inner">
                        <h3>{{$total_sls}}</h3>

                        <p>{{$total_sls}} NBS Sebagai Target Penerimaan</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-bag"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info</a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-4 col-4">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>{{$total_penerimaan}}</h3>

                        <p>{{$total_penerimaan/$total_sls*100}}% NBS Telah di Terima</p>
                      </div>
                      <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info</a>
                    </div>
                  </div>
                  <div class="col-lg-4 col-4">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3>{{$total_sisa}}</h3>

                        <p>{{$total_sisa/$total_sls*100}}% NBS Belum di Terima</p>
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
                                    <th>Tgl Terima di TU</th>
                                    <th>Petugas Penerima</th>
                                    <th>Status Penerimaan di Pengolahan1</th>
                                    <th>Jumlah UTP diterima</th>
                                    <th>Jumlah UTP target</th>
                                    <th>Jumlah DS.Utama</th>
                                    <th>Jumlah DS.Cadangan</th>
                                    <th>Jumlah Peta WB</th>
                                    <th>Aksi</th>
                            </tr>    
                            </thead>
                            <tbody>
                                @foreach ($alurdokumen as $al)
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
                                    <td>{{ $al->tgl_terima}}</td>
                                    <td>{{ $al->nama_petugas_batching}}</td>
                                    <td>
                                        @if ($al->nama_petugas_batching == NULL) 
                                            Belum 
                                        @else
                                            Sudah
                                        @endif
                                    </td>
                                    <td style="
                                        @if ($al->jml_terima_UTP < $al->jml_target_utp) 
                                             background-color: red; color: white;  
                                        @elseif ($al->jml_terima_UTP > $al->jml_target_utp) 
                                             background-color: yellow; color: white; )
                                        @else
                                             background-color: green; color: white;
                                        @endif
                                        ">
                                        {{ $al->jml_terima_UTP}}
                                    </td>
                                    <td>{{ $al->jml_target_utp}}</td>                                     
                                    <td>{{ $al->jml_terima_ds_utama}}</td>                                    
                                    <td>{{ $al->jml_terima_ds_cad}}</td>                                 
                                    <td>{{ $al->jml_terima_petawb}}</td>                                    
                                    <td><a class="btn btn-info btn-sm" href="{{ route('alurpengolahan.edit',$al->id) }}">Update</a></td>
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
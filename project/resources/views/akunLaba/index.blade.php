<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>akunLaba</title>
</head>
<body>
@extends('master')
@section('judul','Laporan akunLaba')
@section('css')
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
@endsection
@section('content')
<a href="{{url('akunLaba/create')}}" class="btn btn-primary">Tambah</a> 

  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
  
<Table id="data_pemesanan" class="table table-bordered table-striped">
<thead>
<tr>
<th>No.</th>
<th>Nomor Akun Laba</th>
<th>Nama Laporan Akun Laba</th>
<th>Jumlah</th>
<th>Aksi</th>
</tr>
</thead>
<tbody>
@foreach($akunLaba as $key=>$value)
<tr>
<td>{{$key+1}}</td>
<td>{{$value->no_akunLaba}}</td>
<td>{{$value->nama_akunLaba}}</td>
<td>{{$value->jumlah}}</td>
<?php $total += $value->jumlah; ?>


<td> 
<a href = "{{url('akunLaba/'.$value->id.'/edit')}}"><small class="badge badge-warning"><i class="fa fa-edit text-white"></i></small></a></a>
<a href = "{{url('akunLaba/delete/'.$value->id)}}"><small class="badge badge-danger"><i class="fa fa-trash"></i></small></a>
</td>
</tr>
@endforeach
</tbody>
<tfoot>
  <th colspan="4">Total</th>
  <th>{{$total}}</th>
</tfoot>
</table>
@endsection
@section('js')
<!-- DataTables -->
<script src="{{asset('plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script>
  $(function () {
    $("#data_pemesanan").DataTable({
      "responsive": true,
      "autoWidth": false,
    });
  });
</script>
@endsection
</body>
</html>

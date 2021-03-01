@extends('chartsapp')

@section('content')
<h1><i class="fa fa-bar-chart"></i> Chart Nilai</h1><hr>

        <div id="chart" style="width:100%"></div>
        @barchart('Jumlah', 'chart')
<hr>
@stop
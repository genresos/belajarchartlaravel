@extends('chartsapp')

@section('content')
    @if($siswa->count())
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover table-condensed" width="300px">
                <thead align="center">
                    <tr>
                        <td width="100px">NIS</td>
                        <td>Nama Siswa</td>
                        <td>Nilai</td>
                    </tr>
                </thead>
                <tbody>
                @foreach($siswa as $siswanya)
                    <tr>
                        <td align="center">{{ $siswanya->NIS }}</td>
                        <td>{{ $siswanya->Nama }}</td>
                        <td align="center">{{ $siswanya->Nilai }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    @else
        <div class="alert alert-warning">
            <i class="fa fa-exclamation-triangle"></i> Data Siswa tidak tersedia
        </div>
    @endif
@stop
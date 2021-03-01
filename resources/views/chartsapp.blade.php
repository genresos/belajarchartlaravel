<!DOCTYPE html>
<html lang="en">
    <head>
        <title> Belajar Charts Laravel 5</title>
        <link href="{{ asset('/bootstrap/css/bootstrap.css') }}" rel="stylesheet">
        <link href="{{ asset('/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('/bootstrap/css/bootstrap-theme.css') }}" rel="stylesheet">
        <link href="{{ asset('/font-awesome/css/font-awesome.css')}}" rel="stylesheet">

        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/jquery-2.1.1.min.js"></script>
        <style>
            .lebar{
                width:500px;
            }
            .kanan{
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="navbar-brand">
                   <a href="/">Charts Sederhana</a>
                </div>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <a href="/piechart"><button class="btn btn-info navbar-btn kanan"><i class="fa fa-pie-chart"></i> CHARTS 1</button></a>
                <a href="/barchart"><button class="btn btn-info navbar-btn kanan"><i class="fa fa-bar-chart"></i> CHARTS 2</button></a>
            </ul>
        </div>
    </nav>
    </br></br></br></br>
    <div class="container lebar">
        @yield('content')
    </div>
    <div align="center"><span class="glyphicon glyphicon-copyright-mark" ></span> 2021 Rian Fajar Pambudi</div>


    </body>
</html>
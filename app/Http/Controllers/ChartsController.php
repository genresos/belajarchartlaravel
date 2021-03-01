<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Khill\Lavacharts\Lavacharts;
use Lava;

class ChartsController extends Controller {


	public function index()
	{
        $siswa = Siswa::orderBy('NIS','ASC')->get();
		return view('pages.index',compact('siswa'));
	}

    function bar(){
        $votes  =  \Lava::DataTable();

        $dataSiswa = DB::table('siswas')->groupBy('Nilai')->get();

        $votes->addStringColumn('Jumlah')
            ->addNumberColumn('Jumlah');
        foreach($dataSiswa as $siswa){
            $votes->addRow(array($siswa->Nilai,
                DB::table('siswas')->where('Nilai','=',$siswa->Nilai)->count()));
        }

        \Lava::BarChart('Jumlah')
            ->setOptions(array(
                'datatable' => $votes,
                'orientation' => 'horizontal',

            ));
        return view('pages.bar');
    }

    function pie(){
        $nilai = \Lava::DataTable();

        $dataNilai = DB::Table('siswas')->groupBy('Nilai')->get();

        $nilai->addColumn('string','Reasons')
            ->addColumn('number','Percent');
        foreach($dataNilai as $n){
            $nilai->addRow(
                array(
                    $n->Nilai,DB::Table('siswas')->where('Nilai','=',$n->Nilai)->count()
                )
            );
        }

        \Lava::PieChart('Nilai')->setOptions(
            array(
                'datatable'=>$nilai,
                'is3D'=>true,
                'slices'=>array(
                    \Lava::Slice(array(
                        'offset' => 0.1
                    )),
                    \Lava::Slice(array(
                        'offset' => 0.1
                    )),
                    \Lava::Slice(array(
                        'offset' => 0.1
                    ))
                )
            )
        );
        return view('pages.pie');
    }

}

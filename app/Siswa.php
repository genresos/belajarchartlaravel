<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model {

    protected $primaryKey = 'NIS';

	protected $fillable = [
        'NIS','Nama','Nilai'
    ];

}

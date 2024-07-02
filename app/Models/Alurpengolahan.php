<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alurpengolahan extends Model
{
    use HasFactory;
    public $table = "transaksi";
    protected $fillable = [
        'kode_prov',
        'kode_kota',
        'kode_kec',
        'kode_kel',
        'kode_nbs',
        'ppl',
        'pml',
        'jenis_UTP',
        'jenis_ds_utama',
        'jenis_ds_cad',
        'jenis_petawb',
        'jml_terima_UTP',
        'jml_terima_ds_utama',
        'jml_terima_ds_cad',
        'jml_terima_petawb',
        'jml_pakai_UTP',
        'jml_pakai_ds_utama',
        'jml_pakai_ds_cad',
        'jml_pakai_petawb',
        'jml_tpakai_UTP',
        'jml_tpakai_ds_utama',
        'jml_tpakai_ds_cad',
        'jml_tpakai_petawb',
        'petugas_batching',
        'tgl_terima',
        'id_box_batching',
        'tgl_selesai_box',
        'petugas_entri',
        'tgl_mulai_entri',
        'tgl_selesai_entri',
        'petugas_edcod',
        'tgl_mulai_edcod',
        'tgl_selesai_edcod',
        'konsentrasi',
        'created_at',
        'updated_at'
    ];
}

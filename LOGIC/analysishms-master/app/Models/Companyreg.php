<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Kyslik\ColumnSortable\Sortable;

class Companyreg extends Model
{
    use HasFactory, Sortable;

    protected $table = 'company';
    protected $connection = 'tenant';
    protected $primaryKey = 'propertyid';
    public $timestamps = false;

    protected $fillable = [
        'comp_code',
        'sn_num',
        'comp_name',
        'start_dt',
        'end_dt',
        'address1',
        'address2',
        'country',
        'state',
        'city',
        'state_code',
        'mobile',
        'email',
        'password',
        'acname',
        'acnum',
        'ifsccode',
        'bankname',
        'branchname',
        'cfyear',
        'pfyear',
        'pin',
        'cover_image',
        'payment_qr_code',
        'u_name',
        'pan_no',
        'nationality',
        'gstin',
        'division_code',
        'legal_name',
        'trade_name',
        'logo',
        'images',
        'dealer_logo',
        'maplink',
        'db_host',
        'db_port',
        'db_name',
        'db_username',
        'db_password',
    ];

    public function roomcategories()
    {
        return $this->hasMany(RoomCat::class, 'propertyid', 'propertyid');
    }

}

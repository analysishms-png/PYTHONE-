<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $propertyid
 * @property string $design_name
 * @property string $layout_json
 * @property int|null $is_active
 * @property string $u_name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereDesignName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereLayoutJson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereUName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChequeDesign whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class ChequeDesign extends Model
{

    protected $fillable = [
        'propertyid',
        'design_name',
        'layout_json',
        'u_name'
    ];

    // protected $casts = [
    //     'layout_json' => 'array',
    //     'is_active' => 'boolean',
    // ];
}

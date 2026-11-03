<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $docid
 * @property string $duplicate
 * @property string $restaurentname
 * @property string $restcode
 * @property string $kitchen
 * @property string $printerpath
 * @property int $itemsn
 * @property int $psno
 * @property string $itemname
 * @property string $description
 * @property string $itemprice
 * @property string $quantity
 * @property string $voidyn
 * @property string $created_at
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay query()
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereDocid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereDuplicate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereItemname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereItemprice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereItemsn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereKitchen($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay wherePrinterpath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay wherePsno($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereRestaurentname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereRestcode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrintDelay whereVoidyn($value)
 * @mixin \Eloquent
 */
class PrintDelay extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'printdelay';
}

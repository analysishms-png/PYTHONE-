<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property string|null $mainmenu
 * @property string|null $submenu
 * @property string|null $pagename
 * @property string|null $summary
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog query()
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereMainmenu($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog wherePagename($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereSn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereSubmenu($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereSummary($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereUEntdt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UpdateLog whereUUpdatedt($value)
 * @mixin \Eloquent
 */
class UpdateLog extends Model
{
    use HasFactory;
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';
    protected $table = 'updatelog';
}

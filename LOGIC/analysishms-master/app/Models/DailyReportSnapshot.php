<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $snapshot_key
 * @property string $propertyid
 * @property string $report_date
 * @property string|null $generated_by
 * @property string $payload_json
 * @property string|null $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $expires_at
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot query()
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereExpiresAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereGeneratedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot wherePayloadJson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereReportDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereSnapshotKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|DailyReportSnapshot whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class DailyReportSnapshot extends Model
{
    use HasFactory;
}

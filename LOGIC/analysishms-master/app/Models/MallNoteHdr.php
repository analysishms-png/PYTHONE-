<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Mall Debit / Credit Note — mall_note_hdr table
 *
 * @property int         $id
 * @property int         $propertyid
 * @property string      $docid
 * @property string      $vtype          DN (Debit Note) / CN (Credit Note)
 * @property int         $vno
 * @property string      $vdate
 * @property int         $tenantid
 * @property int|null    $leaseid
 * @property string|null $refdocid       Reference invoice docid
 * @property string|null $refdate
 * @property string|null $reason
 * @property float       $taxableamount
 * @property float       $taxamount
 * @property float       $totalamount
 * @property string|null $remarks
 * @property string|null $u_name
 * @property string|null $u_entdt
 *
 * @method static \Illuminate\Database\Eloquent\Builder|MallNoteHdr newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallNoteHdr newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MallNoteHdr query()
 * @mixin \Eloquent
 */
class MallNoteHdr extends Model
{
    protected $table      = 'mall_note_hdr';
    protected $primaryKey = 'id';
    public    $incrementing = true;
    public    $timestamps   = true;

    protected $fillable = [
        'propertyid',
        'docid',
        'vtype',
        'vno',
        'vdate',
        'tenantid',
        'leaseid',
        'refdocid',
        'refdate',
        'reason',
        'taxableamount',
        'taxamount',
        'totalamount',
        'remarks',
        'u_name',
        'u_entdt',
    ];

    protected $casts = [
        'propertyid'     => 'integer',
        'vno'            => 'integer',
        'tenantid'       => 'integer',
        'leaseid'        => 'integer',
        'taxableamount'  => 'float',
        'taxamount'      => 'float',
        'totalamount'    => 'float',
    ];

    // ── Relationships ──────────────────────────────────────────────────────────

    /**
     * Property scope — controller me MallNoteHdr::forProperty($id) use hota hai.
     * Table-name qualified rakha hai, kyunki joins ke saath subgroup bhi propertyid rakhta hai.
     */
    public function scopeForProperty($query, $propertyid)
    {
        return $query->where($this->getTable() . '.propertyid', $propertyid);
    }

    public function details()
    {
        return $this->hasMany(MallNoteDtl::class, 'docid', 'docid')
            ->where('propertyid', $this->propertyid);
    }

    public function lease()
    {
        return $this->belongsTo(MallLeaseHdr::class, 'leaseid', 'id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $sn
 * @property int $propertyid
 * @property string $questioncode
 * @property string|null $question
 * @property int|null $displayorder
 * @property int $isactive
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster query()
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster whereDisplayorder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster whereIsactive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster wherePropertyid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster whereQuestion($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster whereQuestioncode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FeedbackMaster whereSn($value)
 * @mixin \Eloquent
 */
class FeedbackMaster extends Model
{
    protected $table = 'feedbackmaster';

    

    public $timestamps = false;

    protected $fillable = [
        'propertyid',
        'questioncode',
        'question',
        'displayorder', 
        'depatment',  
        'isactive',
    ];
}

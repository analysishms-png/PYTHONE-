<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupportTicketTransfer extends Model
{
    use HasFactory;
    protected $connection = 'main';
    protected $table = 'support_ticket_transfers';

    protected $fillable = [
        'support_ticket_id',
        'transferred_by_id',
        'transferred_by_name',
        'transferred_to_id',
        'transferred_to_name',
        'reason',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    public function ticket()
    {
        return $this->belongsTo(SupportTicket::class, 'support_ticket_id');
    }
}

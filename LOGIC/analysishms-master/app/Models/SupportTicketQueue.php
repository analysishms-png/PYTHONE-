<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SupportTicketQueue extends Model
{
    protected $connection = 'main';

    protected $table = 'support_ticket_queue';

    protected $fillable = [
        'support_ticket_id',
        'property_id',
        'queue_status',
        'assigned_to_id',
        'queued_at',
        'assigned_at',
    ];

    protected $casts = [
        'queued_at' => 'datetime',
        'assigned_at' => 'datetime',
    ];

    public function ticket()
    {
        return $this->belongsTo(SupportTicket::class, 'support_ticket_id');
    }

    public function assignedTo()
    {
        return $this->belongsTo(User::class, 'assigned_to_id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SupportTicketMessage extends Model
{
    use HasFactory;
    protected $connection = 'main';
    protected $table = 'support_ticket_messages';

    protected $fillable = [
        'support_ticket_id',
        'sender_id',
        'sender_name',
        'sender_role',
        'message',
        'image_path',
        'delivered_at',
        'read_at',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'delivered_at' => 'datetime',
        'read_at' => 'datetime',
    ];

    public function ticket()
    {
        return $this->belongsTo(SupportTicket::class, 'support_ticket_id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

/**
 * @property int $id
 * @property string $ticket_number
 * @property string $name
 * @property string $mobile_number
 * @property string $problem
 * @property string $status
 * @property int|null $user_id
 * @property string|null $property_id
 * @property int|null $working_by_id
 * @property string|null $working_by_name
 * @property \Illuminate\Support\Carbon|null $working_by_at
 * @property int|null $assigned_to_id
 * @property string|null $assigned_to_name
 * @property int|null $transferred_by_id
 * @property string|null $transferred_by_name
 * @property string|null $transfer_reason
 * @property \Illuminate\Support\Carbon|null $transferred_at
 * @property \Illuminate\Support\Carbon|null $assigned_at
 * @property bool $is_notified
 * @property bool $is_seen
 * @property string $assignment_status
 * @property bool $is_user_satisfied
 * @property \Illuminate\Support\Carbon|null $user_satisfied_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\User|null $assignedUser
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\SupportTicketMessage> $messages
 * @property-read int|null $messages_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\SupportTicketTransfer> $transfers
 * @property-read int|null $transfers_count
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket byStatus($status)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket complete()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket pending()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket query()
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereAssignedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereAssignedToId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereAssignedToName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereAssignmentStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereIsNotified($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereIsSeen($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereIsUserSatisfied($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereMobileNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereProblem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket wherePropertyId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereTicketNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereTransferReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereTransferredAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereTransferredById($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereTransferredByName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereUserSatisfiedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereWorkingByAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereWorkingById($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket whereWorkingByName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SupportTicket working()
 * @mixin \Eloquent
 */
class SupportTicket extends Model
{
    use HasFactory;
    protected $connection = 'main';
    protected $table = 'support_tickets';

    protected $fillable = [
        'ticket_number',
        'name',
        'mobile_number',
        'problem',
        'status',
        'user_id',
        'property_id',
        'working_by_id',
        'working_by_name',
        'working_by_at',
        'assigned_to_id',
        'assigned_to_name',
        'transferred_by_id',
        'transferred_by_name',
        'transfer_reason',
        'transferred_at',
        'assigned_at',
        'is_notified',
        'is_seen',
        'assignment_status',
        'is_user_satisfied',
        'user_satisfied_at',
    ];

    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
        'working_by_at' => 'datetime',
        'transferred_at' => 'datetime',
        'assigned_at' => 'datetime',
        'is_notified' => 'boolean',
        'is_seen' => 'boolean',
        'is_user_satisfied' => 'boolean',
        'user_satisfied_at' => 'datetime',
    ];

    /**
     * Generate a unique ticket number
     */
    public static function generateTicketNumber()
    {
        do {
            $ticketNumber = 'TKT-' . date('Ymd') . '-' . strtoupper(substr(uniqid(), -6));
        } while (self::where('ticket_number', $ticketNumber)->exists());

        return $ticketNumber;
    }

    /**
     * Scope for filtering by status
     */
    public function scopeByStatus($query, $status)
    {
        return $query->where('status', $status);
    }

    /**
     * Scope for pending tickets
     */
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    /**
     * Scope for working tickets
     */
    public function scopeWorking($query)
    {
        return $query->where('status', 'working');
    }

    /**
     * Scope for completed tickets
     */
    public function scopeComplete($query)
    {
        return $query->where('status', 'complete');
    }

    /**
     * Find best available user for ticket assignment
     */
    public static function findBestAvailableUser()
    {
        $apColumn = self::getUserApColumn();

        if (! $apColumn) {
            return null;
        }

        // Get support users with AP = P
        $users = DB::table('users')
            ->where('propertyid', '20')
            ->where('useroradmin', 'support')
            ->where($apColumn, 'P')
            ->get();

        if ($users->isEmpty()) {
            return null;
        }

        $availableUsers = [];

        foreach ($users as $user) {
            $activeCount = self::where('assigned_to_id', $user->id)
                ->whereIn('status', ['pending', 'working'])
                ->count();

            // Available only when no active ticket exists
            if ($activeCount === 0) {
                $availableUsers[] = [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                ];
            }
        }

        return $availableUsers[0] ?? null;
    }

    /**
     * Resolve AP column name from users table
     */
    public static function getUserApColumn(): ?string
    {
        if (DB::getSchemaBuilder()->hasColumn('users', 'AP')) {
            return 'AP';
        }

        if (DB::getSchemaBuilder()->hasColumn('users', 'ap')) {
            return 'ap';
        }

        return null;
    }

    /**
     * Update AP status for user (P/A)
     */
    public static function updateUserApStatus(int $userId, string $status): void
    {
        $apColumn = self::getUserApColumn();

        if (! $apColumn) {
            return;
        }

        DB::table('users')
            ->where('id', $userId)
            ->update([$apColumn => $status]);
    }

    /**
     * Assign ticket to specific support user
     */
    public static function assignTicketToUser(self $ticket, array $user, string $assignmentStatus = 'assigned'): self
    {
        $ticket->assigned_to_id = $user['id'];
        $ticket->assigned_to_name = $user['name'];
        $ticket->assigned_at = now();
        $ticket->assignment_status = $assignmentStatus;
        $ticket->is_notified = false;
        $ticket->is_seen = false;
        $ticket->save();

        return $ticket;
    }

    /**
     * Queue ticket when all support users are busy
     */
    public static function enqueueTicket(int $ticketId, ?string $propertyId = null): void
    {
        SupportTicketQueue::create([
            'support_ticket_id' => $ticketId,
            'property_id' => $propertyId,
            'queue_status' => 'queued',
            'queued_at' => now(),
        ]);
    }

    /**
     * Assign next queued ticket if any support user is available
     */
    public static function assignNextQueuedTicket(): ?self
    {
        $bestUser = self::findBestAvailableUser();

        if (! $bestUser) {
            return null;
        }

        $queuedTicketRow = SupportTicketQueue::where('queue_status', 'queued')
            ->orderBy('id', 'asc')
            ->first();

        if (! $queuedTicketRow) {
            return null;
        }

        $ticket = self::find($queuedTicketRow->support_ticket_id);

        if (! $ticket) {
            SupportTicketQueue::where('id', $queuedTicketRow->id)->delete();
            return null;
        }

        self::assignTicketToUser($ticket, $bestUser, 'assigned');

        SupportTicketQueue::where('id', $queuedTicketRow->id)
            ->update([
                'queue_status' => 'assigned',
                'assigned_to_id' => $bestUser['id'],
                'assigned_at' => now(),
                'updated_at' => now(),
            ]);

        return $ticket;
    }

    /**
     * Keep assigning queued tickets while both queue and available users exist
     */
    public static function assignQueuedTicketsForAvailableUsers(int $maxIterations = 100): int
    {
        $assignedCount = 0;

        while ($assignedCount < $maxIterations) {
            $assigned = self::assignNextQueuedTicket();

            if (! $assigned) {
                break;
            }

            $assignedCount++;
        }

        return $assignedCount;
    }

    /**
     * Relationship with assigned user
     */
    public function assignedUser()
    {
        return $this->belongsTo(\App\Models\User::class, 'assigned_to_id');
    }

    public function messages()
    {
        return $this->hasMany(\App\Models\SupportTicketMessage::class, 'support_ticket_id');
    }

    public function transfers()
    {
        return $this->hasMany(\App\Models\SupportTicketTransfer::class, 'support_ticket_id');
    }
}

<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Queue\SerializesModels;

class RoomKeyEvent implements ShouldBroadcast
{
    use SerializesModels;

    public $payload;
    public $propertyId;

    public function __construct(array $payload, $propertyId)
    {
        $this->payload = $payload;
        $this->propertyId = (string) $propertyId;
    }

    public function broadcastOn()
    {
        return new Channel($this->buildChannelName());
    }

    public function broadcastAs()
    {
        return 'room-key-event';
    }

    public function broadcastWith()
    {
        return $this->payload;
    }

    private function buildChannelName(): string
    {
        $propertyId = preg_replace('/[^A-Za-z0-9_\-=@,.;]/', '-', trim(strtolower($this->propertyId)));

        return 'roomkey-channel.property.' . substr($propertyId ?: 'unknown-property', 0, 80);
    }
}

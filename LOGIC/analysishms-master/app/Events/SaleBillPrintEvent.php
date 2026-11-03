<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Queue\SerializesModels;

class SaleBillPrintEvent implements ShouldBroadcast
{
    use SerializesModels;

    public $payload;
    public $propertyId;
    public $username;

    public function __construct($payload, $propertyId = null, $username = null)
    {
        $this->payload = $payload;
        $this->propertyId = (string) ($propertyId ?? data_get($payload, 'propertyid', 'unknown'));
        $this->username = (string) ($username ?? data_get($payload, 'target_username', 'unknown'));
    }

    public function broadcastOn()
    {
        return new Channel($this->buildChannelName('salebill-print-channel'));
    }

    public function broadcastAs()
    {
        return 'salebill-print-event';
    }

    public function broadcastWith()
    {
        return $this->payload;
    }

    private function buildChannelName(string $baseChannel): string
    {
        $propertyPart = $this->sanitizeChannelPart($this->propertyId, 'unknown-property');
        $userPart = $this->sanitizeChannelPart($this->username, 'unknown-user');

        // return "{$baseChannel}.property.{$propertyPart}.user.{$userPart}";
        return "{$baseChannel}.property.{$propertyPart}";
    }

    private function sanitizeChannelPart(string $value, string $fallback): string
    {
        $sanitized = preg_replace('/[^A-Za-z0-9_\-=@,.;]/', '-', trim(strtolower($value)));
        $sanitized = trim((string) $sanitized, '-.');

        if ($sanitized === '') {
            return $fallback;
        }

        return substr($sanitized, 0, 80);
    }
}

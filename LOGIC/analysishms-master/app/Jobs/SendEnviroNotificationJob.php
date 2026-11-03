<?php

namespace App\Jobs;

use App\Services\EnviroNotificationService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SendEnviroNotificationJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public function __construct(
        public int|string $propertyId,
        public string $route,
        public ?string $customMessage = null,
    ) {}

    public function handle(
        EnviroNotificationService $service
    ): void {
        $service->send(
            propertyId: $this->propertyId,
            route: $this->route,
            module: 'Analysis HMS',
            customMessage: $this->customMessage,
        );
    }
}

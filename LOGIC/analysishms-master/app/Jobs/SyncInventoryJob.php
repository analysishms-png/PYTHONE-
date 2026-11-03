<?php

namespace App\Jobs;

use App\Services\Channel\SyncInventory;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SyncInventoryJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public function __construct(
        private $oldroomcat,
        private $newroomcat,
        private $oldroomaarrdate,
        private $newroomaarrdate,
        private $oldroomdepdate,
        private $newroomdepdate,
        private $propertyId,
        private $u_name,
        private bool $forceRefresh = false,
    ) {}

    public function handle(SyncInventory $syncInventory): void
    {
        $syncInventory->sync(
            $this->oldroomcat,
            $this->newroomcat,
            $this->oldroomaarrdate,
            $this->newroomaarrdate,
            $this->oldroomdepdate,
            $this->newroomdepdate,
            $this->propertyId,
            $this->u_name,
            $this->forceRefresh
        );
    }
}

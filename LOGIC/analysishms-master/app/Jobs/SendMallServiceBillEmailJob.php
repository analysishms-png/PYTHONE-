<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;
use App\Services\PropertyMailConfigurator;
use App\Services\TenantDatabase;
use App\Mail\MallServiceBillMail;
use App\Http\Controllers\MallMailController;
use Barryvdh\DomPDF\Facade\Pdf;

class SendMallServiceBillEmailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $propertyid;
    public $docid;
    public $toEmail;
    public $userId;

    /**
     * The number of times the job may be attempted.
     */
    public $tries = 3;

    /**
     * The number of seconds the job can run before timing out.
     * Must be strictly less than queue connection retry_after (90s).
     */
    public $timeout = 60;

    /**
     * The number of seconds to wait before retrying the job.
     */
    public $backoff = [10, 30];

    /**
     * Create a new job instance.
     */
    public function __construct($propertyid, $docid, $toEmail, $userId = null)
    {
        $this->propertyid = $propertyid;
        $this->docid      = $docid;
        $this->toEmail    = $toEmail;
        $this->userId     = $userId;
    }

    /**
     * Execute the job in background.
     */
    public function handle(): void
    {
        try {
            // 1. Dynamic Tenant Database switch for Property (e.g. db_182)
            TenantDatabase::connect($this->propertyid);

            // 2. Fetch bill data
            $mailController = app(MallMailController::class);
            $built = $mailController->buildBillData($this->docid, $this->propertyid);

            if (!$built || empty($built['data'])) {
                Log::warning("Queue Bill Mail: Bill data not found for docid: {$this->docid}, property: {$this->propertyid}");
                return;
            }

            $company = $built['company'];
            $tenant  = $built['tenant'];
            $bill    = $built['bill'];
            $groups  = $built['groups'];

            // 3. Dynamic Property SMTP configuration
            $from = PropertyMailConfigurator::apply($this->propertyid);
            if (!$from) {
                Log::error("Queue Bill Mail: No active SMTP settings for property: {$this->propertyid}");
                return;
            }

            // 4. Render PDF in Background
            $pdfBytes = Pdf::loadView('property.mallmanagement.servicebillprint', $built['printData'])
                ->setPaper('a4', 'portrait')
                ->output();

            $pdfName = 'ServiceBill-' . preg_replace('/[^A-Za-z0-9-]/', '-', $bill['billNo'] ?? 'Bill') . '.pdf';

            // 5. Send via dedicated dynamic mailer 'propertymail'
            Mail::mailer('propertymail')
                ->to($this->toEmail)
                ->send(
                    (new MallServiceBillMail($company, $tenant, $bill, $groups))
                        ->attachData($pdfBytes, $pdfName, ['mime' => 'application/pdf'])
                        ->from($from['from_address'], $from['from_name'])
                );

            Log::info("Queue Bill Mail sent successfully to {$this->toEmail} for docid {$this->docid} (Property: {$this->propertyid})");

        } catch (\Throwable $e) {
            Log::error("Queue Bill Mail failed: " . $e->getMessage(), [
                'propertyid' => $this->propertyid,
                'docid'      => $this->docid,
                'toEmail'    => $this->toEmail,
            ]);
            throw $e; // Re-throw for Laravel queue auto-retry
        }
    }
}

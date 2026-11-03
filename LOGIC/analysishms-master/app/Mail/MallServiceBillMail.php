<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class MallServiceBillMail extends Mailable
{
    use Queueable, SerializesModels;

    public $company;
    public $tenant;
    public $bill;
    public $rows;
    public $pdfData;
    public $pdfName;

    /**
     * @param object $company  – company table record
     * @param object $tenant   – subgroup record (name, email, etc.)
     * @param array  $bill     – bill header fields (billno, billdate, fromperiod, toperiod, amount)
     * @param array  $rows     – charge detail rows
     * @param string|null $pdfData – (optional) print-wala PDF bytes jis ko attach karna hai
     * @param string      $pdfName – attachment file name
     */
    public function __construct($company, $tenant, $bill, $rows, $pdfData = null, $pdfName = 'ServiceBill.pdf')
    {
        $this->company = $company;
        $this->tenant  = $tenant;
        $this->bill    = $bill;
        $this->rows    = $rows;
        $this->pdfData = $pdfData;
        $this->pdfName = $pdfName;
    }

    public function build()
    {
        $mail = $this->view('emails.mallservicebill')
            ->subject('Service Bill – ' . ($this->bill['billNo'] ?? '') . ' | ' . ($this->company->comp_name ?? ''))
            ->with([
                'company' => $this->company,
                'tenant'  => $this->tenant,
                'bill'    => $this->bill,
                'rows'    => $this->rows,
            ]);

        // Print wala PDF bill hamesha attach hota hai (email-CSS issues na thaar)
        if (!empty($this->pdfData)) {
            $mail->attachData($this->pdfData, $this->pdfName, ['mime' => 'application/pdf']);
        }

        return $mail;
    }
}

<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ReservationConfirmation extends Mailable
{
    use Queueable, SerializesModels;

    public $company;
    public $data;
    public $rooms;
    public $advance;
    public $curdate;
    public $enviro;

    public function __construct($company, $data, $rooms, $advance, $curdate, $enviro)
    {
        $this->company = $company;
        $this->data = $data;
        $this->rooms = $rooms;
        $this->advance = $advance;
        $this->curdate = $curdate;
        $this->enviro = $enviro;
    }

    public function build()
    {
        $viewName = view()->exists('emails.reservationconfirmation')
            ? 'emails.reservationconfirmation'
            : 'property.resletter';

        $hotelName = $this->company->comp_name ?? 'Hotel';
        $bookNo = $this->data->BookNo ?? '';

        return $this->view($viewName)
            ->subject("Reservation Confirmation – Book No #{$bookNo} | {$hotelName}")
            ->with([
                'company' => $this->company,
                'data' => $this->data,
                'rooms' => $this->rooms,
                'advance' => $this->advance,
                'curdate' => $this->curdate,
                'enviro' => $this->enviro,
            ]);
    }
}

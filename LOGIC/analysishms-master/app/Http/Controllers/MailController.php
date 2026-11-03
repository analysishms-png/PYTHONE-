<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\TestMail;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function sendTestMail()
    {
        $details = [
            'title' => 'Test Email from Ayaka Studio',
            'body' => 'This is a test email sent from Laravel 12 using no-reply@ayakastudio.com'
        ];

        Mail::to('sagarrajpoot7860@gmail.com')->send(new TestMail($details));

        return 'Test email sent!';
    }
}
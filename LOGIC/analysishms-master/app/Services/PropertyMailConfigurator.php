<?php

namespace App\Services;

use App\Models\MailSetting;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;

class PropertyMailConfigurator
{
    /**
     * Property ki SMTP settings ek DEDICATED mailer 'propertymail' me lagao.
     * (default 'smtp' / reservation mail / baaki app mail ko TOUCH nahi karta)
     *
     * @param mixed $propertyid property id
     * @return array|null array = ['from_address'=>..,'from_name'=>..] | null = config nahi mili
     */
    public static function apply($propertyid): ?array
    {
        $m = MailSetting::where('propertyid', $propertyid)
            ->where('activeyn', 1)
            ->first();

        // Config nahi mili to null return — caller 422 dega
        if (!$m || empty($m->host) || empty($m->username) || empty($m->password)) {
            return null;
        }

        // ★★ ISOLATION: sirf nayi key 'mail.mailers.propertymail' ADD hoti hai.
        // 'mail.mailers.smtp', 'mail.default', 'mail.from.*' — kabhi touch nahi hote.
        Config::set('mail.mailers.propertymail', [
            'transport'  => 'smtp',
            'host'       => $m->host,
            'port'       => (int) $m->port,
            'username'   => $m->username,
            'password'   => $m->password,
            'encryption' => $m->encryption ?: 'tls',
        ]);

        // Cache hatao (agar pehle isi request me set ho chuka ho)
        Mail::purge('propertymail');

        // From caller ko do — message par lagayega, GLOBALLY nahi
        return [
            'from_address' => $m->from_address ?: $m->username,
            'from_name'    => $m->from_name    ?: '',
        ];
    }
}
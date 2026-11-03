<?php

namespace App\Services;

class GrcTerms
{
    public const COUNT = 12;

    /**
     * EnviroFom DB row se non-empty terms array banao (order 1..12).
     * $row = EnviroFom::first() ka result (stdClass ya Model object)
     */
    public static function fromRow($row): array
    {
        if (! $row) {
            return [];
        }

        $terms = [];

        for ($i = 1; $i <= self::COUNT; $i++) {
            $value = trim((string) ($row->{'grcinstruction' . $i} ?? ''));

            if ($value !== '') {
                $terms[] = $value;
            }
        }

        return $terms;
    }

    /**
     * 12 default terms. 14 → 12 merged:
     *   Term 11 = Governing law + Amendment Rules
     *   Term 12 = Arbitration + Jurisdiction (user /fomparameter se city khud likhega)
     */
    public static function defaults(): array
    {
        return [
            'Guest: Guest shall and include the person occupying the room any co-occupant or any visitor to the Hotel.',
            'Tariff: Tariff on the registration card is only per night exclusive of taxes unless specified otherwise; Resident Guests should obtain the okay cardo from the Reception.',
            'Settlement Of The Bills: Bills must be settled on presentation, cheques are not accepted.',
            'Company line on visitors luggage and Belongings: In the case of default payments of dues by the guest, the management shall be entitled a lien on the luggage and belongings and to detain after the date of departure without reference to the party and appropriate the net sale proceeds provides the amounts due by the guests.',
            'Visitors Belongings: Visitors are requested to lock the doors of their rooms when going out or when going to bed and not leave the key in the key whole. The company will not, in any way and any other property not enterusted to the management or for damage theirof whether due to neglect of Hotel staff or any other calls over including theft or pilferage.',
            'Hazardous Goods: A Storing of cinema films, Raw and Exposed any other articles of a combustible or hazardous nature in resident rooms or store is strictly prohibited.',
            'Damage to Property: A Guest will be held responsible for any loss or damage to the hotel property caused by themselves, their friends or any person for whom they are responsible.',
            'Management Right: The management reserves to the itself the absolute right of admission to any person in the hotel premises and to request any guest to vacate his or her room at whatsover and the guests shall be wound to vocate when requests to do so. In default management will be entitled to remove the luggage of the visitors from the room accepted by him/her.',
            'Relations between company and visitors: Nothing herein above shall always be deemed to certitude any tenancy or sub tenancy or any right of tenancy or sub lenancy and any right throw of in favour of any guest or resident or visitors and the company shall always be deemed to be in full and absolute possession and controlled of the whole of hotel premises.',
            'Government Rules and regulation: Guest are requested to observe the government rule and regulation in force time to time in the respect of registration alcoholic drinks firearms.',
            'Governing law: Substantive laws of the republic of India. The management reserves to itself the right to add to or amend any of above terms, conditions and rules.',
            'Arbitration: In the event of any dispute arising out of or in connection with the subject matter of this agreement, parties/guests agree to refer such dispute to arbitration to be conducted international arbitration, India Arbitration proceeding shall be conduct before a sole arbitrator to mutually appointed by the parties, If parties are unable to agree on as provided under the laic India Rules. Seats of such arbitration shall be in [City] and proceedings shall be conducted in English. The decision of the arbitrator shall be final and binding. Jurisdiction: Exclusive jurisdiction of the Courts in [City].',
        ];
    }

    /**
     * companydata() → app('tenant.company') — TenantBootstrap me bind, 0 query
     */
    public static function city(): string
    {
        return (string) (companydata()->city ?? '');
    }
}

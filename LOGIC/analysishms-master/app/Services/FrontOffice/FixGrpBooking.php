<?php

namespace App\Services\FrontOffice;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use App\Jobs\SyncInventoryJob;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class FixGrpBooking
{
    public function sync(Request $request, int $propertyId): array
    {
        $docid = $request->input('docid');
        $totalRooms = (int) $request->input('totalrooms', 0);
        $ncurdate = ncurdate();

        if (!$docid || $totalRooms < 1 || $totalRooms > 100) {
            throw ValidationException::withMessages([
                'docid' => 'Invalid booking document or room count.',
            ]);
        }

        return DB::transaction(function () use ($request, $propertyId, $docid, $totalRooms, $ncurdate) {
            $rows = DB::table('grpbookingdetails')
                ->where('Property_ID', $propertyId)
                ->where('BookingDocid', $docid)
                ->lockForUpdate()
                ->get()
                ->keyBy(fn($row) => (string) $row->Sno);

            if ($rows->isEmpty()) {
                throw ValidationException::withMessages([
                    'docid' => 'Booking details not found.',
                ]);
            }

            $seen = [];
            $new = [];

            for ($i = 1; $i <= $totalRooms; $i++) {
                $sno = $request->input("grpsno{$i}");

                if ($sno === null || $sno === '') {
                    $new[] = $i;
                    continue;
                }

                $sno = (string) $sno;

                if (!ctype_digit($sno)) {
                    throw ValidationException::withMessages([
                        "grpsno{$i}" => 'Invalid booking row.',
                    ]);
                }

                $snoKey = (string) (int) $sno;

                if (isset($seen[$snoKey]) || !$rows->has($snoKey)) {
                    throw ValidationException::withMessages([
                        "grpsno{$i}" => 'Invalid or duplicate booking row.',
                    ]);
                }

                $seen[$snoKey] = true;
            }

            $maxSno = (int) $rows->max('Sno');
            $insertedRows = [];

            foreach ($new as $i) {
                $roomCat = $request->input("cat_code{$i}");
                $roomNo = $request->input("roommast{$i}");
                $adults = $request->input("adult{$i}");
                $children = $request->input("child{$i}");
                $rate = $request->input("rate{$i}");
                $incTax = $request->input("tax_inc{$i}", 'Y');

                if (empty($incTax)) {
                    $incTax = 'Y';
                }

                if (
                    !$roomCat || !$roomNo ||
                    !is_numeric($adults) || (int) $adults < 1 ||
                    !is_numeric($children) || (int) $children < 0 ||
                    !is_numeric($rate) || (float) $rate < 0 ||
                    !in_array((string) $incTax, ['Y', 'N'], true)
                ) {
                    throw ValidationException::withMessages([
                        "room{$i}" => 'Room details are missing or invalid.',
                    ]);
                }

                $template = $rows->first(
                    fn($row) =>
                    (string) $row->Cancel === 'N' &&
                        empty($row->ContraDocId)
                );

                if (!$template) {
                    throw ValidationException::withMessages([
                        "room{$i}" => 'No suitable existing booking row found to create the new room.',
                    ]);
                }

                $newSno = ++$maxSno;
                $newRow = (array) $template;

                unset($newRow['id']);

                $newRow['Property_ID'] = $propertyId;
                $newRow['BookingDocid'] = $docid;
                $newRow['Sno'] = $newSno;
                $newRow['BookNo'] = $request->input('folioNo') ?? $template->BookNo;
                $newRow['GuestProf'] = $request->input('guestprof') ?? $template->GuestProf;
                $newRow['GuestName'] = $request->input('name') ?? $template->GuestName;

                $newRow['RoomCat'] = $roomCat;
                $newRow['RoomNo'] = $roomNo;
                $newRow['Adults'] = $adults;
                $newRow['Childs'] = $children;
                $newRow['Tarrif'] = $rate;
                $newRow['IncTax'] = $incTax;
                $newRow['Plan_Code'] = $request->input("planmaster{$i}") ?? '';

                $newRow['ArrDate'] = $request->input('checkindate');
                $newRow['ArrTime'] = $request->input('checkintime') ?: $template->ArrTime;
                $newRow['DepDate'] = $request->input('checkoutdate');
                $newRow['DepTime'] = $request->input('checkouttime') ?: $template->DepTime;
                $newRow['NoDays'] = max(1, (int) $request->input('stay_days', 1));

                $newRow['ContraDocId'] = null;
                $newRow['ContraSno'] = null;
                $newRow['chkoutyn'] = 'N';
                $newRow['Cancel'] = 'N';
                $newRow['CancelDate'] = null;
                $newRow['CancelUName'] = '';
                $newRow['created_at'] = now();
                $newRow['updated_at'] = now();

                DB::table('grpbookingdetails')->insert($newRow);

                $newArrivalDate = Carbon::parse($newRow['ArrDate'])->toDateString();

                if ($newArrivalDate >= $ncurdate && channelparameter()->checkyn == 'Y') {
                    SyncInventoryJob::dispatch(
                        $newRow['RoomCat'],
                        $newRow['RoomCat'],
                        $newArrivalDate,
                        $newArrivalDate,
                        Carbon::parse($newRow['DepDate'])->toDateString(),
                        Carbon::parse($newRow['DepDate'])->toDateString(),
                        $propertyId,
                        Auth::user()->u_name,
                        true
                    )->afterCommit();
                }

                $insertedRows[$i] = $newSno;

                $newRow['id'] = null;
                $rows->put((string) $newSno, (object) $newRow);
            }

            return [
                'inserted' => count($insertedRows),
                'inserted_rows' => $insertedRows,
            ];
        });
    }
}

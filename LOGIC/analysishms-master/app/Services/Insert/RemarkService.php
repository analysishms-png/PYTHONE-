<?php

namespace App\Services\Insert;

use App\Models\Remark;
use Illuminate\Support\Facades\DB;
use Throwable;

class RemarkService
{
    public static function insert(array $remarks): array
    {
        DB::beginTransaction();

        try {
            $inserted = [];

            foreach ($remarks as $data) {
                $docid = $data['docid'];
                $oldSno = $data['sno'] ?? null;

                if ($oldSno !== null) {
                    Remark::where('docid', $docid)
                        ->where('sno', $oldSno)
                        ->where('status', 1)
                        ->update([
                            'status' => 0,
                        ]);
                }

                $maxSno = Remark::where('docid', $docid)
                    ->lockForUpdate()
                    ->max('sno');

                $newSno = ($maxSno ?? 0) + 1;

                $remark = Remark::create([
                    'docid' => $docid,
                    'sno' => $newSno,
                    'type' => $data['type'],
                    'status' => 1,
                    'description' => $data['description'],
                    'ipaddr' => request()->ip(),
                    'u_name' => auth()->user()->u_name,
                ]);

                $inserted[] = $remark;
            }

            DB::commit();

            return $inserted;
        } catch (Throwable $e) {
            DB::rollBack();

            throw $e;
        }
    }

    public static function update(array $data)
    {
        DB::beginTransaction();

        try {
            $remark = Remark::where('docid', $data['docid'])
                ->where('sno', $data['sno'])
                ->where('status', 1)
                ->firstOrFail();

            $remark->update([
                'description' => $data['description'],
                'ipaddr' => request()->ip(),
                'u_name' => auth()->user()->u_name,
            ]);

            DB::commit();

            return $remark;
        } catch (Throwable $e) {
            DB::rollBack();

            throw $e;
        }
    }
}

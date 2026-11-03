<?php
// Comprehensive comparison of Laravel migrations vs SQL Server DB

// 1. Parse Laravel migration tables and columns
$migrationDir = "C:/Analysis/HMS_py/LOGIC/analysishms-master/database/migrations/tenant_migrations";
$phpFiles = new RecursiveIteratorIterator(
    new RecursiveDirectoryIterator($migrationDir),
    RecursiveIteratorIterator::LEAVES_ONLY
);
$phpFiles = array_filter(iterator_to_array($phpFiles), function($f) { return $f instanceof SplFileInfo && $f->getExtension() === 'php'; });

$laravelTables = [];
foreach ($phpFiles as $file) {
    $content = file_get_contents($file->getPathname());
    
    // Extract table name
    if (preg_match("/create\s*\(\s*['\"]([^'\"]+)['\"]/i", $content, $m)) {
        $tableName = $m[1];
        
        // Extract column names: $table->method('column_name', ...
        $colNames = [];
        if (preg_match_all("/\\\$table->\w+\s*\(\s*['\"]([^'\"\)]+)['\"]/i", $content, $matches, PREG_SET_ORDER)) {
            foreach ($matches as $match) {
                $col = strtolower($match[1]);
                if ($col && !in_array($col, ['unique', 'primary', 'key', 'index', 'nullable', 'default', 'increment', 'unsigned'])) {
                    $colNames[] = $col;
                }
            }
        }
        
        $laravelTables[$tableName] = array_unique($colNames);
    }
}

// 2. Parse SQL Server tables from candidate section
$content = file_get_contents("C:/Analysis/HMS_py/_qa/schema_probe_raw.txt");
$lines = explode("\n", $content);

$sqlServerTables = [];  // table name -> columns (from key sections)
$ssTableNames = [];     // all table names from candidate section
$ssYes = [];
$ssNo = [];

$inCandidate = false;
foreach ($lines as $line) {
    $trimmed = trim($line);
    if (preg_match("/^## candidate \\/ previously-blocked/i", $trimmed)) {
        $inCandidate = true;
        continue;
    }
    if ($inCandidate) {
        if (preg_match("/^(YES|NO)\s+(\S+)/i", $trimmed, $m)) {
            $status = strtolower($m[1]);
            $tableName = strtolower($m[2]);
            $ssTableNames[$tableName] = $status;
            if ($status === "YES") $ssYes[$tableName] = true;
            else $ssNo[$tableName] = true;
        }
    }
}

// 3. Parse key table columns from ### headings
$keyTableCols = [];
foreach ($lines as $line) {
    $t = trim($line);
    if (preg_match("/^### (.+?) \\((\\d+) cols\\)/i", $t, $m)) {
        $keyTableCols[strtolower($m[1])] = [
            'count' => (int)$m[2],
            // We'll also get the detailed columns later
        ];
    }
}

// Parse detailed column listings for key tables
$currentKeyTable = null;
$keyTableDetails = [];
for ($i = 0; $i < count($lines); $i++) {
    $line = $lines[$i];
    $trimmed = trim($line);
    
    if (preg_match("/^### (.+?) \\((\\d+) cols\\)/i", $trimmed, $m)) {
        $currentKeyTable = strtolower($m[1]);
        $keyTableDetails[$currentKeyTable] = [];
        continue;
    }
    
    if ($currentKeyTable && $trimmed !== "") {
        if (preg_match("/^## /i", $trimmed)) {
            $currentKeyTable = null;
            continue;
        }
        if (!preg_match("/^### /i", $trimmed)) {
            // Column line
            $cols = explode(",", $trimmed);
            foreach ($cols as $col) {
                $col = trim($col);
                if ($col !== "") {
                    $keyTableDetails[$currentKeyTable][] = strtolower($col);
                }
            }
        }
    }
}

// 4. Now perform the comparison
echo "=== SCHEMA OVERLAP ANALYSIS ===\n\n";

// Count Laravel tables
$laravelTableNames = array_keys($laravelTables);
echo "Laravel tables parsed: " . count($laravelTableNames) . "\n\n";

// Find tables that exist in SQL Server (case-insensitive matching)
$existsInSs = [];
$absentFromSs = [];

foreach ($laravelTableNames as $ltable) {
    $found = false;
    foreach ($ssTableNames as $stable => $status) {
        if (strtolower($stable) === $ltable) {
            $found = true;
            break;
        }
    }
    if ($found) {
        $existsInSs[$ltable] = true;
    } else {
        // Also check if any SQL Server table name matches case-insensitively
        // but with different casing (e.g., Ledger vs ledger)
        $exactMatch = false;
        foreach ($ssTableNames as $stable => $status) {
            if (strcasecmp($stable, $ltable) === 0) {
                $exactMatch = true;
                break;
            }
        }
        if ($exactMatch) {
            $existsInSs[$ltable] = true;
        } else {
            $absentFromSs[$ltable] = true;
        }
    }
}

echo "Laravel tables EXISTS in SQL Server: " . count($existsInSs) . "\n";
echo "Laravel tables ABSENT from SQL Server: " . count($absentFromSs) . "\n\n";

// Get the list of SQL Server table names (from candidate section, lowercase)
$ssTableNamesLower = array_keys($ssTableNames);

// For EXISTS tables, get column-level comparison
echo "=== Table A: EXISTS in SQL Server ===\n\n";

$sKeyTables = ['ledger', 'voucher_type', 'voucher_prefix', 'tds_categories', 'ledger_tds', 
    'ledgeradj', 'ledgerref', 'acgroup', 'subgroup', 'roommast', 'rooms', 'bookings', 
    'guestfolio', 'suntran', 'suntranh', 'sale1', 'sale2', 'kot', 'plan_mast', 
    'nadauditlog', 'menuhelp', 'usermodule', 'userpermission', 'hallbook', 'bookinginquiry', 
    'venmast', 'venueocc', 'facilitybill1', 'facilitybill2', 'suntranfacility'];

foreach (sort($existsInSs) as $ltable => $v) {
    $ltableLower = strtolower($ltable);
    
    // Find the SQL Server table name (case-preserved)
    $ssTableName = null;
    foreach ($ssTableNamesLower as $sn => $status) {
        if (strcasecmp($sn, $ltableLower) === 0) {
            $ssTableName = $sn;
            break;
        }
    }
    
    $colsL = $laravelTables[$ltable] ?? [];
    $ssCols = [];
    
    // Get SQL Server columns for this table from key table details
    if (isset($keyTableDetails[$ltableLower])) {
        $ssCols = $keyTableDetails[$ltableLower];
    } elseif (isset($keyTableDetails[$ssTableName ?? ''])) {
        $ssCols = $keyTableDetails[$ssTableName];
    }
    
    // If not in key details, try to get from the general table listing
    if (empty($ssCols) && $ssTableName) {
        // Look for ### heading for this table
        foreach (array_keys($keyTableCols) as $ktt) {
            if (strcasecmp($ktt, $ssTableName) === 0) {
                // Get columns from the detailed section
                break;
            }
        }
    }
    
    // Calculate missing columns
    $missingFromSs = array_diff($colsL, $ssCols);
    $missingFromLaravel = array_diff($ssCols, $colsL);
    
    echo str_pad($ltable, 30) . " | " . ($ssTableName ?? 'UNKNOWN');
    echo " | L:" . count($colsL) . " S:" . count($ssCols);
    
    if (!empty($missingFromSs)) {
        echo " L-MISSING: " . implode(', ', array_slice(array_unique($missingFromSs), 0, 10));
    }
    if (!empty($missingFromLaravel)) {
        echo " S-MISSING: " . implode(', ', array_slice(array_unique($missingFromLaravel), 0, 10));
    }
    echo "\n";
}

echo "\n=== Table B: ABSENT from SQL Server ===\n\n";
$areaGroups = [
    'mall' => [],
    'channel' => [],
    'notifications' => [],
    'whatsapp' => [],
    'performance' => [],
    'hr_extras' => [],
    'housekeeping_extras' => [],
    'member' => [],
    'gatepass' => [],
    'smartcard' => [],
    'remarks_booking_followup' => [],
    'printers' => [],
    'activity_logs' => [],
];

foreach ($absentFromSs as $ltable => $v) {
    // Try to determine the area based on table name patterns
    $area = 'other';
    $lower = strtolower($ltable);
    
    if (preg_match('/^(mall|mall_)/', $lower) || in_array($lower, ['mall_receipt', 'mall_shop_mast', 'mall_lease_hdr', 'mall_note_hdr', 'mall_daily_power_entry', 'mall_meter_reading', 'mall_partylocation', 'mall_lease_commercial', 'mall_lease_dtl', 'mall_lease_escalation', 'mall_shoppowerconsumption'])) {
        $area = 'mall';
    } elseif (preg_match('/^(channel|notification|notify)/i', $lower) || in_array($lower, ['notification_master', 'notification_deliveries', 'whatsapp_log', 'sms_envro', 'essl_attendance_logs'])) {
        if (in_array($lower, ['whatsapp_log', 'sms_envro', 'essl_attendance_logs'])) {
            $area = 'whatsapp';
        } else {
            $area = 'notifications';
        }
    } elseif (preg_match('/^(hr|performance)/i', $lower) || in_array($lower, ['paycharge', 'paychargeh', 'paychargelog', 'overtime', 'shift_master', 'states', 'nctype_mast'])) {
        if (in_array($lower, ['paycharge', 'paychargeh', 'paychargelog'])) {
            $area = 'performance';
        } elseif (in_array($lower, ['overtime', 'shift_master', 'states', 'nctype_mast'])) {
            $area = 'hr_extras';
        }
    } elseif (preg_match('/^(housekeeping|hk)/i', $lower) || in_array($lower, ['hkroomassigns', 'hkchecklistmast', 'hkcleaningftr', 'hkcleaninghdr', 'hkcleaningtype', 'hkdamage', 'hkfloors', 'hkinspectionhdr', 'hkinspectionhdtl', 'hklaundryservicemaster', 'hklfhdr', 'hklfitem', 'hkmaintenances', 'hkservices', 'hksupervisor', 'housekeeparmast', 'hkservices'])) {
        $area = 'housekeeping_extras';
    } elseif (preg_match('/^(member|mem)/i', $lower) || in_array($lower, ['memberfamily', 'membercategories', 'memfacilitymast', 'membermast', 'memproposedmeminf', 'memrevwise', 'memvisitentry', 'memaddrwa', 'memtagadaletter', 'memenviro', 'memfacilitybilling'])) {
        $area = 'member';
    } elseif (preg_match('/^(gatepass|gates?)/i', $lower) || in_array($lower, ['gatepass', 'gate_passin', 'gate_pass_out'])) {
        $area = 'gatepass';
    } elseif (preg_match('/^(smartcard)/i', $lower) || in_array($lower, ['smartcardledger', 'smartcardmaster', 'smartcardregistration', 'smartciiseedetail'])) {
        $area = 'smartcard';
    } elseif (preg_match('/^(remark|booking_follow)/i', $lower) || in_array($lower, ['remarks', 'bookingfollowups', 'bookingfollowups', 'booking_follow_ups'])) {
        if (in_array($lower, ['remarks', 'booking_follow_ups'])) {
            $area = 'remarks_booking_followup';
        }
    } elseif (preg_match('/^printer/', $lower) || in_array($lower, ['printers', 'printersetup'])) {
        $area = 'printers';
    } elseif (preg_match('/^(activity|update|company|ledger_log)/i', $lower) || in_array($lower, ['activitylog', 'updatelog', 'companylog', 'ledgerlogs'])) {
        $area = 'activity_logs';
    }
    
    // Map Laravel table description
    $desc = 'Laravel migration table';
    switch ($lower) {
        case 'cateringbook': $desc = 'Catering booking table'; break;
        case 'eventmast': $desc = 'Event master table'; break;
        case 'hallbill': $desc = 'Hall bill table'; break;
        case 'banquetsundry': $desc = 'Banquet sundry table'; break;
        case 'smartcard': $desc = 'Smart card table'; break;  // duplicate key
        case 'rewardpoint': $desc = 'Reward point table'; break;
        case 'telcall': $desc = 'Tel call table'; break;
        case 'doormlock': $desc = 'Door lock table'; break;
        case 'einvoice': $desc = 'E-invoice table'; break;
        case 'roominclusive': $desc = 'Room inclusive table'; break;
        case 'roomincludelog': $desc = 'Room inclusive log table'; break;
        case 'dailyreportsnapshot': $desc = 'Daily report snapshot table'; break;
        case 'mallreceipt': $desc = 'Mall receipt table'; break;
        case 'mallshopmast': $desc = 'Mall shop master table'; break;
        case 'mallleasehdr': $desc = 'Mall lease header table'; break;
        case 'mallnotehdr': $desc = 'Mall note header table'; break;
        case 'malldailypowerentry': $desc = 'Mall daily power entry table'; break;
        case 'mallmeterreading': $desc = 'Mall meter reading table'; break;
        case 'voucher': $desc = 'Voucher table'; break;
        case 'venueMast': case 'venuemast': $desc = 'Venue master table'; break;
        case 'venueocc': $desc = 'Venue occurrence table'; break;
        case 'facilitybill1': $desc = 'Facility bill 1 table'; break;
        case 'facilitybill2': $desc = 'Facility bill 2 table'; break;
        case 'suntranfacility': $desc = 'Suntran facility table'; break;
        case 'remarks': $desc = 'Remarks table'; break;
        case 'bookingfollowup': case 'booking_follow_ups': $desc = 'Booking follow-up table'; break;
        case 'gatepassin': $desc = 'Gate pass in table'; break;
        case 'gatepassout': $desc = 'Gate pass out table'; break;
        case 'esslattendancelogs': $desc = 'ESSL attendance logs table'; break;
        case 'chequedesign': $desc = 'Cheque design table'; break;
        case 'rvraterule': $desc = 'RV rate rule table'; break;
        case 'bookingsource': $desc = 'Booking source table'; break;
        case 'travelagent': $desc = 'Travel agent table'; break;
        case 'membercategory': $desc = 'Member category table'; break;
        case 'memberfacilitymast': $desc = 'Member facility master table'; break;
        case 'membermast': $desc = 'Member master table'; break;
        case 'hkroomassign': $desc = 'HK room assign table'; break;
        case 'hkcleaninghdr': $desc = 'HK cleaning header table'; break;
        case 'hkcleaningftr': $desc = 'HK cleaning footer table'; break;
        case 'hkinspectionhdr': $desc = 'HK inspection header table'; break;
        case 'hkinspectiondtl': $desc = 'HK inspection detail table'; break;
        case 'lostfound': $desc = 'Lost found table'; break;
        case 'servicereqhdr': case 'servicerequesthdr': $desc = 'Service request header table'; break;
        case 'servicereqhdrdtl': case 'servicerequesthdrdtl': $desc = 'Service request detail table'; break;
        case 'shiftmaster': $desc = 'Shift master table'; break;
        case 'printers': $desc = 'Printers table'; break;
        case 'printersetup': $desc = 'Printer setup table'; break;
        case 'notificationmaster': $desc = 'Notification master table'; break;
        case 'notificationdelivery': $desc = 'Notification delivery table'; break;
        case 'whatsapplog': $desc = 'WhatsApp log table'; break;
        case 'activitylog': $desc = 'Activity log table'; break;
        case 'updatelog': $desc = 'Update log table'; break;
        case 'companylog': $desc = 'Company log table'; break;
        case 'ledgerlog': $desc = 'Ledger log table'; break;
    }
    
    $areaGroups[$area][] = ['table' => $ltable, 'desc' => $desc];
}

foreach (['mall', 'channel', 'notifications', 'whatsapp', 'performance', 'hr_extras', 'housekeeping_extras', 'member', 'gatepass', 'smartcard', 'remarks_booking_followup', 'printers', 'activity_logs'] as $area) {
    echo str_pad($area, 30) . ": " . count($areaGroups[$area]) . " tables\n";
}
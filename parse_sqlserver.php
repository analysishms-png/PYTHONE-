<?php
// Parse SQL Server schema from schema_probe_raw.txt - get all tables

$content = file_get_contents("C:/Analysis/HMS_py/_qa/schema_probe_raw.txt");
$lines = explode("\n", $content);

// Extract tables from the "## candidate / previously-blocked" section
$candidateTables = [];
$inCandidate = false;

foreach ($lines as $line) {
    $trimmed = trim($line);
    if (preg_match("/^## candidate \\/ previously-blocked/i", $trimmed)) {
        $inCandidate = true;
        continue;
    }
    if ($inCandidate) {
        // Format: "YES  TableName" or "NO  TableName"
        if (preg_match("/^(YES|NO)\s+(\S+)/i", $trimmed, $m)) {
            $status = strtolower($m[1]);
            $tableName = strtolower($m[2]);
            $candidateTables[$tableName] = $status;
        }
    }
}

echo "=== Candidate/Previously-blocked tables ===\n";
$yesCount = count(array_filter($candidateTables, fn($v) => $v === "YES"));
$noCount = count(array_filter($candidateTables, fn($v) => $v === "NO"));
echo "YES (exist in SQL Server): $yesCount\n";
echo "NO (absent from SQL Server): $noCount\n";

$yesTables = array_keys(array_filter($candidateTables, fn($v) => $v === "YES"));
$noTables = array_keys(array_filter($candidateTables, fn($v) => $v === "NO"));

echo "\nYES tables:\n";
foreach (sort($yesTables) as $t) echo "  $t\n";

echo "\nNO tables:\n";
foreach (sort($noTables) as $t) echo "  $t\n";

// Also extract from the "### (N cols)" headings
echo "\n\n=== Key tables from ### headings ===\n";
$keyTables = [];
foreach ($lines as $line) {
    $t = trim($line);
    if (preg_match("/^### (.+?) \\((\\d+) cols\\)/i", $t, $m)) {
        $keyTables[strtolower($m[1])] = (int)$m[2];
    }
}
foreach (sort($keyTables) as $t => $c) {
    echo "  " . str_pad($t, 30) . " => $c cols\n";
}
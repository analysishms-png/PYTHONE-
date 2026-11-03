<?php
$content = file_get_contents("C:/Analysis/HMS_py/_qa/schema_probe_raw.txt");
$lines = explode("\n", $content);
foreach ($lines as $i => $line) {
    $trimmed = trim($line);
    if (preg_match("/^(YES|NO)\s+(\S+)/i", $trimmed, $m)) {
        echo "Line " . ($i+1) . ": status=" . $m[1] . " table=" . $m[2] . "\n";
    }
    if ($i > 65) break;
}
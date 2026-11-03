<?php
header('Content-Type: application/json');

$ini = php_ini_loaded_file();
$txt = @file_get_contents($ini);

function pick_line($txt, $key)
{
    if ($txt === false) return null;
    foreach (explode("\n", $txt) as $line) {
        if (preg_match('/^\s*;?\s*' . preg_quote($key, '/') . '\s*=/i', $line)) {
            return trim($line);
        }
    }
    return null;
}

echo json_encode([
    'sapi' => php_sapi_name(),
    'ini' => $ini,
    'php_sees' => [
        'max_execution_time_line' => pick_line($txt, 'max_execution_time'),
        'max_input_time_line' => pick_line($txt, 'max_input_time'),
        'memory_limit_line' => pick_line($txt, 'memory_limit'),
    ],
    'effective' => [
        'max_execution_time' => ini_get('max_execution_time'),
        'max_input_time' => ini_get('max_input_time'),
        'memory_limit' => ini_get('memory_limit'),
    ],
], JSON_PRETTY_PRINT);

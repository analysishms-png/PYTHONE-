<?php
echo "PHP Version: " . PHP_VERSION . "\n";
echo "Extension Dir: " . ini_get('extension_dir') . "\n";
echo "Loaded: " . (extension_loaded('imagick') ? 'Yes' : 'No') . "\n";
echo "Class exists: " . (class_exists('Imagick') ? 'Yes' : 'No') . "\n";

$disabled = ini_get('disable_functions');
echo "Disabled functions: " . ($disabled ? $disabled : 'None') . "\n";

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Foundation\Application;

class ConfigController extends Controller
{

    public function config()
    {
        $maxInputVars = ini_get('max_input_vars');
        $uploadMaxFilesize = ini_get('upload_max_filesize');
        $maxMultipartBodyParts = ini_get('max_multipart_body_parts');
        $phpIniPath = php_ini_loaded_file();
        $memory_limit = ini_get('memory_limit');
        $postMaxSize = ini_get('post_max_size');
        $max_execution_time = ini_get('max_execution_time');
        $max_input_time = ini_get('max_input_time');
        $php_sapi_name = php_sapi_name();
        $php_binary = PHP_BINARY;

        $imagickLoaded = extension_loaded('imagick');
        $imagickVersion = $imagickLoaded ? (new \Imagick())->getVersion() : null;

        $zipLoaded = extension_loaded('zip');

        $gdLoaded = extension_loaded('gd');
        $gdVersion = $gdLoaded ? gd_info()['GD Version'] : null;
        $phpVersion = phpversion();
        $laravelVersion = Application::VERSION;

        return response()->json([
            'upload_max_filesize' => $uploadMaxFilesize,
            'max_input_vars' => $maxInputVars,
            'max_multipart_body_parts' => $maxMultipartBodyParts,
            'php_ini_path' => $phpIniPath,
            'memory_limit' => $memory_limit,
            'post_max_size' => $postMaxSize,
            'max_execution_time' => $max_execution_time,
            'max_input_time' => $max_input_time,
            'imagick_loaded' => $imagickLoaded,
            'imagick_version' => $imagickVersion,
            'zip_loaded' => $zipLoaded,
            'gd_loaded' => $gdLoaded,
            'gd_version' => $gdVersion,
            'php_version' => $phpVersion,
            'laravel_version' => $laravelVersion,
            'php_sapi_name' => $php_sapi_name,
            'php_binary' => $php_binary,
        ]);
    }

    public function phpinipath()
    {
        return response()->json([
            'php_ini_path' => php_ini_loaded_file(),
        ]);
    }
}

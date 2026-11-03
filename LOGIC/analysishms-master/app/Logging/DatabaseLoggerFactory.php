<?php

namespace App\Logging;

use Monolog\Level;
use Monolog\Logger;

class DatabaseLoggerFactory
{
    public function __invoke(array $config): Logger
    {
        return new Logger('database', [
            new DatabaseLogger(
                $config['level'] ?? Level::Debug,
                true
            ),
        ]);
    }
}

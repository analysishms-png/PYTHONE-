<?php
namespace Tests\Unit;
use App\Services\Performance\AccessLogParser;
use PHPUnit\Framework\TestCase;

class AccessLogParserTest extends TestCase
{
    public function test_parses_combined_log_line(): void
    {
        $parser = new AccessLogParser();
        $line = '192.168.1.10 - - [12/Oct/2026:10:15:00 +0530] "GET /reports/daily/99 HTTP/1.1" 200 1234 "-" "Mozilla/5.0"';
        $parsed = $parser->parseLine($line);
        $this->assertNotNull($parsed);
        $this->assertSame('GET', $parsed['method']);
        $this->assertSame('/reports/daily/99', $parsed['raw_path']);
        $this->assertSame('/reports/daily/{id}', $parsed['endpoint']);
        $this->assertSame(200, $parsed['status']);
        $this->assertSame(1234, $parsed['bytes']);
    }

    public function test_rejects_malformed_line(): void
    {
        $parser = new AccessLogParser();
        $this->assertNull($parser->parseLine('not a log line'));
    }

    public function test_absent_duration_stays_null(): void
    {
        $parser = new AccessLogParser();
        $parsed = $parser->parseLine('192.168.1.10 - - [12/Oct/2026:10:15:00 +0530] "GET /dashboard HTTP/1.1" 200 100 "-" "Mozilla/5.0"');
        $this->assertNotNull($parsed);
        $this->assertNull($parsed['duration_ms']);
    }

    public function test_microsecond_duration_is_converted(): void
    {
        $parser = new AccessLogParser();
        $parsed = $parser->parseLine('192.168.1.10 - - [12/Oct/2026:10:15:00 +0530] "GET /dashboard HTTP/1.1" 200 100 "-" "Mozilla/5.0" 1500000');
        $this->assertNotNull($parsed);
        $this->assertSame(1500, $parsed['duration_ms']);
    }
}

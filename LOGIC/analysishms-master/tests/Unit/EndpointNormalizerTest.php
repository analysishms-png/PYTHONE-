<?php
namespace Tests\Unit;
use App\Services\Performance\AccessLogParser;
use App\Services\Performance\EndpointNormalizer;
use PHPUnit\Framework\TestCase;

class EndpointNormalizerTest extends TestCase
{
    public function test_normalizes_numeric_segments(): void
    {
        $n = new EndpointNormalizer();
        $this->assertSame('/users/{id}/orders/{id}', $n->normalizePath('/users/123/orders/456'));
        $this->assertSame('/admin/performance', $n->normalizePath('/admin/performance?x=1'));
        $this->assertSame('/', $n->normalizePath(''));
    }
}

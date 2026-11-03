<?php

namespace Tests\Feature;

use Tests\TestCase;

class PerformanceRoutesTest extends TestCase
{
    public function test_guests_are_redirected_from_performance_pages(): void
    {
        $this->get('/admin/performance')->assertRedirect('/login');
        $this->get('/admin/performance/sources')->assertRedirect('/login');
    }

    public function test_performance_named_routes_are_registered(): void
    {
        $this->assertSame(url('/admin/performance'), route('admin.performance.overview'));
        $this->assertSame(url('/admin/performance/cpu'), route('admin.performance.cpu'));
    }
}

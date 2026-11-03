<?php

namespace Tests\Feature;

use Tests\TestCase;

class PerformanceAccessTest extends TestCase
{
    public function test_all_dashboard_get_pages_require_superadmin(): void
    {
        $paths = [
            '/admin/performance',
            '/admin/performance/endpoints',
            '/admin/performance/endpoints/show',
            '/admin/performance/cpu',
            '/admin/performance/queries',
            '/admin/performance/traffic',
            '/admin/performance/sources',
        ];

        foreach ($paths as $path) {
            $this->get($path)->assertRedirect('/login');
        }
    }

    public function test_import_post_requires_authentication(): void
    {
        $this->post('/admin/performance/sources/import', ['filename' => 'test.log'])
            ->assertRedirect('/login');
    }
}

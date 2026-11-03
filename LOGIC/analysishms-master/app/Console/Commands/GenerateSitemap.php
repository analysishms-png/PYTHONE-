<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\URL;
use SimpleXMLElement;

class GenerateSitemap extends Command
{
    protected $signature = 'sitemap:generate';
    protected $description = 'Generate sitemap.xml for the website';

    public function handle()
    {
        $pages = [
            URL::to('/'),
            URL::to('/login'),
            URL::to('/application'),
            URL::to('/about'),
            URL::to('/contact'),
            URL::to('/services/front-office'),
        ];

        $xml = new SimpleXMLElement('<?xml version="1.0" encoding="UTF-8"?><urlset></urlset>');
        $xml->addAttribute('xmlns', 'https://www.sitemaps.org/schemas/sitemap/0.9');

        foreach ($pages as $page) {
            $url = $xml->addChild('url');
            $url->addChild('loc', $page);
            $url->addChild('lastmod', now()->toDateString());
            $url->addChild('changefreq', 'weekly');
            $url->addChild('priority', '0.8');
        }

        $file = public_path('sitemap.xml');
        $xml->asXML($file);

        $this->info("Sitemap generated successfully at $file");
    }
}

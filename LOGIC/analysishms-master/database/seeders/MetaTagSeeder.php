<?php

namespace Database\Seeders;

use App\Models\MetaTag;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MetaTagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MetaTag::create([
            'page_name' => 'about',
            'title' => 'About Analysis HMS - Hotel Management Software Company',
            'description' => 'About Analysis HMS - a leading hotel management software company in India providing trusted cloud-based SaaS solutions for the hospitality industry.',
            'keywords' => 'about analysis hms, hotel management software company, hospitality software company india, cloud hotel software provider',
            'author' => 'Analysis HMS',
            'robots' => 'index, follow',
            'canonical_url' => 'https://www.analysishms.com/about',
            'theme_color' => '#0d6efd',
            'og_type' => 'website',
            'og_title' => 'About Analysis HMS - Hotel Management Software Company',
            'og_description' => 'Learn about our mission to provide innovative cloud hotel software for the global hospitality industry.',
            'og_url' => 'https://www.analysishms.com/about',
            'og_site_name' => 'Analysis HMS',
            'og_image' => 'https://www.analysishms.com/assets/img/favicon.png',
            'og_locale' => 'en_IN',
            'twitter_card' => 'summary_large_image',
            'twitter_title' => 'About Analysis HMS - Hotel Management Software Company',
            'twitter_description' => 'A trusted hospitality SaaS company in India providing cloud hotel management software.',
            'twitter_image' => 'https://www.analysishms.com/assets/img/favicon.png',
            'twitter_site' => '@analysishms',
        ]);
    }
}

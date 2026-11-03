<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $page_name
 * @property string|null $title
 * @property string|null $description
 * @property string|null $keywords
 * @property string|null $author
 * @property string $robots
 * @property string|null $canonical_url
 * @property string|null $theme_color
 * @property string|null $og_type
 * @property string|null $og_title
 * @property string|null $og_description
 * @property string|null $og_url
 * @property string|null $og_site_name
 * @property string|null $og_image
 * @property string|null $og_locale
 * @property string|null $twitter_card
 * @property string|null $twitter_title
 * @property string|null $twitter_description
 * @property string|null $twitter_image
 * @property string|null $twitter_site
 * @property array|null $schema_json
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag query()
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereAuthor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereCanonicalUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereKeywords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgLocale($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgSiteName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereOgUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag wherePageName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereRobots($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereSchemaJson($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereThemeColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTwitterCard($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTwitterDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTwitterImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTwitterSite($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereTwitterTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|MetaTag whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class MetaTag extends Model
{
    protected $table = 'meta_tags';
    
    protected $fillable = [
        'page_name',
        'title',
        'description',
        'keywords',
        'author',
        'robots',
        'canonical_url',
        'theme_color',
        'og_type',
        'og_title',
        'og_description',
        'og_url',
        'og_site_name',
        'og_image',
        'og_locale',
        'twitter_card',
        'twitter_title',
        'twitter_description',
        'twitter_image',
        'twitter_site',
        'schema_json'
    ];

    protected $casts = [
        'schema_json' => 'json',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    // Get meta by page name
    public static function getByPageName($pageName)
    {
        return self::where('page_name', $pageName)->first();
    }

    // Get all pages
    public static function getAllPages()
    {
        return self::orderBy('page_name')->get();
    }
}

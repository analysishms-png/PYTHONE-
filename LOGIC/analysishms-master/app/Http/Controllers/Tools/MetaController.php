<?php

namespace App\Http\Controllers\Tools;

use App\Http\Controllers\Controller;
use App\Models\MetaTag;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class MetaController extends Controller
{
    // List all meta tags
    public function index()
    {
        $metas = MetaTag::getAllPages();
        return view('tools.tools.meta.index', compact('metas'));
    }

    // Create/Edit form
    public function editCreate($id = null)
    {
        $meta = null;
        if ($id) {
            $meta = MetaTag::findOrFail($id);
        }                                                     
        return view('tools.tools.meta.edit', compact('meta'));
    }

    // Store or Update via AJAX
    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'id' => 'nullable|exists:meta_tags,id',
                'page_name' => 'required|string|unique:meta_tags,page_name,' . ($request->id ?? 'NULL'),
                'title' => 'nullable|string',
                'description' => 'nullable|string',
                'keywords' => 'nullable|string',
                'author' => 'nullable|string',
                'robots' => 'nullable|string',
                'canonical_url' => 'nullable|url',
                'theme_color' => 'nullable|string',
                'og_type' => 'nullable|string',
                'og_title' => 'nullable|string',
                'og_description' => 'nullable|string',
                'og_url' => 'nullable|url',
                'og_site_name' => 'nullable|string',
                'og_image' => 'nullable|url',
                'og_locale' => 'nullable|string',
                'twitter_card' => 'nullable|string',
                'twitter_title' => 'nullable|string',
                'twitter_description' => 'nullable|string',
                'twitter_image' => 'nullable|url',
                'twitter_site' => 'nullable|string',
                'schema_json' => 'nullable|json',
            ]);

            if ($request->id) {
                $meta = MetaTag::findOrFail($request->id);
                $meta->update($validated);
                $message = 'Meta tags updated successfully!';
            } else {
                $meta = MetaTag::create($validated);
                $message = 'Meta tags created successfully!';
            }

            return response()->json([
                'success' => true,
                'message' => $message,
                'data' => $meta
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage()
            ], 400);
        }
    }

    // Delete via AJAX
    public function destroy($id)
    {
        try {
            $meta = MetaTag::findOrFail($id);
            $pageName = $meta->page_name;
            $meta->delete();

            return response()->json([
                'success' => true,
                'message' => "Meta tag for '$pageName' deleted successfully!"
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Error: ' . $e->getMessage()
            ], 400);
        }
    }
  
    // Get meta by page name (for frontend)
    public function getByPage($pageName)
    {
        $meta = MetaTag::getByPageName($pageName);
        
        if ($meta) {
            return response()->json([
                'success' => true,
                'data' => $meta
            ]);
        }

        return response()->json([
            'success' => false,
            'message' => 'Meta tags not found for this page'
        ], 404);
    }
}

<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;

class SuperAdminMainController extends Controller
{
    /**
     * Display a listing of pages.
     */
    public function myPages(Request $request)
    {
        $pages = Page::orderBy('id', 'desc')->paginate(15);
        return view('admin.superadmin.pages.index', compact('pages'));
    }

    /**
     * Show the form for creating a new page.
     */
    public function createPage()
    {
        return view('admin.superadmin.pages.create');
    }

    /**
     * Store a newly created page in storage.
     */
    public function storePage(Request $request)
    {
        $data = $request->validate([
            'name'        => 'required|string|max:255',
            'slug'        => 'required|string|max:255|unique:pages,slug',
            'title'       => 'nullable|string|max:255',
            'description' => 'nullable|string',
            'status'      => 'required|in:active,inactive',
        ]);

        Page::create($data);

        return redirect()->route('superadmin.my-pages')->with('success', 'Page created successfully.');
    }

    /**
     * Show the form for editing the specified page.
     */
    public function editPage($id)
    {
        $page = Page::findOrFail($id);
        return view('admin.superadmin.pages.edit', compact('page'));
    }

    /**
     * Update the specified page in storage.
     */
    public function updatePage(Request $request, $id)
    {
        $page = Page::findOrFail($id);

        $data = $request->validate([
            'name'        => 'required|string|max:255',
            'slug'        => 'required|string|max:255|unique:pages,slug,' . $page->id,
            'title'       => 'nullable|string|max:255',
            'description' => 'nullable|string',
            'status'      => 'required|in:active,inactive',
        ]);

        $page->update($data);

        return redirect()->route('superadmin.my-pages')->with('success', 'Page updated successfully.');
    }

    /**
     * Remove the specified page from storage.
     */
    public function destroyPage($id)
    {
        $page = Page::findOrFail($id);
        $page->delete();
        return redirect()->route('superadmin.my-pages')->with('success', 'Page deleted.');
    }
}

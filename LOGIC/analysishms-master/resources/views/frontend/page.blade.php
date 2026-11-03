@extends('frontend.layouts.main')

@section('main-container')
 <div class="container my-5">
    <h1>{{ $page->title ?? $page->name }}</h1>
    @if($page->description)
        <div class="page-description">
            {!! $page->description !!}
        </div>
    @endif
    @if($page->content)
        <div class="page-content">
            {!! $page->content !!}
        </div>
    @endif
    </div>
@endsection

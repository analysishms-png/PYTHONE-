@extends('property.layouts.main')
@section('main-container')
<div class="content-body">
    <div class="container w-80 mx-auto">
    <h2>Purchase Table (purch2)</h2>

    @if($purchases->count())
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                @foreach(array_keys((array)$purchases[0]) as $column)
                    <th>{{ $column }}</th>
                @endforeach
            </tr>
        </thead>
        <tbody>
            @foreach($purchases as $row)
                <tr>
                    @foreach((array)$row as $value)
                        <td>{{ $value }}</td>
                    @endforeach
                </tr>
            @endforeach
        </tbody>
    </table>
    @else
        <p>No data found in purch2 table.</p>
    @endif
</div>

    </div>        


@endsection
<div id="cheque" style="
    position: relative;
    width: 900px;
    height: 400px;
    margin: 20px auto;
    background: #fff;
">
    @php
        $layout = json_decode($chequeDesign->layout_json, true);
    @endphp

    @foreach ($layout['objects'] as $object)
        @php

            $text = $object['text'];
            $letterSpacing = '';

            switch (trim($text)) {
                case '{{payee_name}}':
                    $text = $pdata['payee_name'] ?? '';
                    break;

                case '{{comp_name}}':
                    $text = $pdata['comp_name'] ?? '';
                    break;

                case '{{voucher_date}}':
                    $text = $pdata['voucher_date'] ?? '';
                    $letterSpacing = 'letter-spacing:12px;';
                    break;

                case '{{amount}}':
                    $text = number_format($pdata['amount'] ?? 0, 2);
                    break;

                case '{{amt_words}}':
                    $text = $pdata['amt_words'] ?? '';
                    break;

                case '{{label_name}}':
                    $text = $pdata['label'] ?? '';
                    break;
            }

        @endphp

        <div
            style="
                position:absolute;
                left:{{ $object['left'] }}px;
                top:{{ $object['top'] }}px;

                font-size:{{ $object['fontSize'] }}px;
                font-family:'{{ $object['fontFamily'] }}';
                font-weight:{{ $object['fontWeight'] }};
                font-style:{{ $object['fontStyle'] }};

                color:{{ $object['fill'] }};
                transform:
                    rotate({{ $object['angle'] ?? 0 }}deg)
                    scale({{ $object['scaleX'] ?? 1 }}, {{ $object['scaleY'] ?? 1 }});
                transform-origin:left top;

                white-space:nowrap;
                {{ $letterSpacing }}
            ">
            {{ $text }}
        </div>
    @endforeach
</div>

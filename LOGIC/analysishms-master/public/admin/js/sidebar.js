function fetchDynamicMenu(elementId) {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    const xhr = new XMLHttpRequest();

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const data = JSON.parse(xhr.responseText);
            const pointOfSale = document.getElementById(elementId);
            data.forEach(function (item) {
                const outerUl = document.createElement('ul');
                outerUl.setAttribute('aria-expanded', 'true');

                const outerLi = document.createElement('li');
                outerLi.setAttribute('class', 'mega-menu mega-menu-sm');

                const outerA = document.createElement('a');
                outerA.setAttribute('class', 'has-arrow');
                outerA.setAttribute('href', 'javascript:void(0)');
                outerA.setAttribute('aria-expanded', 'false');
                outerA.innerHTML = '<i class="fa-solid fa-s"></i><span class="nav-text">' + item.name + '</span>';

                const innerUl = document.createElement('ul');
                innerUl.setAttribute('aria-expanded', 'true');

                const innerLi = document.createElement('li');

                const innerA1 = document.createElement('a');
                const queryparamsa1 = new URLSearchParams();
                queryparamsa1.set('dcode', item.dcode);
                const salebillentryurl = '/salebillentry?' + queryparamsa1.toString();
                innerA1.setAttribute('href', salebillentryurl);
                innerA1.setAttribute('aria-expanded', 'true');
                innerA1.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Sale Bill Entry</span>';

                const innerA2 = document.createElement('a');
                const queryparamsa2 = new URLSearchParams();
                queryparamsa2.set('dcode', item.dcode);
                const posbillentryurl = '/posbillentry?' + queryparamsa2.toString();
                innerA2.setAttribute('href', posbillentryurl);
                innerA2.setAttribute('aria-expanded', 'true');
                innerA2.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">POS Bill Reprint</span>';

                if (item.kot_yn == 'Y' && item.rest_type == 'Outlet') {
                    const innerA3 = document.createElement('a');
                    const queryparamsa3 = new URLSearchParams();
                    queryparamsa3.set('dcode', item.dcode);
                    const kotentryurl = '/kotentry?' + queryparamsa3.toString();
                    innerA3.setAttribute('href', kotentryurl);
                    innerA3.setAttribute('aria-expanded', 'true');
                    innerA3.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Entry</span>';
                    innerLi.appendChild(innerA3);
                    innerUl.appendChild(innerLi);

                    const innerA4 = document.createElement('a');
                    const queryParamsa4 = new URLSearchParams();
                    queryParamsa4.set('dcode', item.dcode);
                    const tablechangeentryurl = '/tablechangeentry?' + queryParamsa4.toString();
                    innerA4.setAttribute('href', tablechangeentryurl);
                    innerA4.setAttribute('aria-expanded', 'true');
                    innerA4.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Table Change Entry</span>';
                    innerLi.appendChild(innerA4);
                    innerLi.appendChild(innerA4);
                    innerUl.appendChild(innerLi);

                    const innerA5 = document.createElement('a');
                    const queryParamsA5 = new URLSearchParams();
                    queryParamsA5.set('dcode', item.dcode);
                    const tableBookingUrl = '/tablebooking?' + queryParamsA5.toString();
                    innerA5.setAttribute('href', tableBookingUrl);
                    innerA5.setAttribute('aria-expanded', 'true');
                    innerA5.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Table Booking</span>';
                    innerLi.appendChild(innerA5);
                    innerUl.appendChild(innerLi);

                    const innerA6 = document.createElement('a');
                    const queryParamsa6 = new URLSearchParams();
                    queryParamsa6.set('dcode', item.dcode);
                    const billlockupurl = '/billlockup?' + queryParamsa6.toString();
                    innerA6.setAttribute('href', billlockupurl);
                    innerA6.setAttribute('aria-expanded', 'true');
                    innerA6.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Bill Lockup</span>';
                    innerLi.appendChild(innerA6);
                    innerLi.appendChild(innerA6);
                    innerUl.appendChild(innerLi);

                    const innerA7 = document.createElement('a');
                    const queryParams = new URLSearchParams();
                    queryParams.set('dcode', item.dcode);
                    const displayTableUrl = '/displaytable?' + queryParams.toString();
                    innerA7.setAttribute('href', displayTableUrl);
                    innerA7.setAttribute('aria-expanded', 'true');
                    innerA7.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Display Table</span>';

                    innerLi.appendChild(innerA7);
                    innerLi.appendChild(innerA7);
                    innerUl.appendChild(innerLi);

                    const innerA8 = document.createElement('a');
                    const queryparamsa8 = new URLSearchParams();
                    queryparamsa8.set('dcode', item.dcode);
                    const kottransferurl = '/kottransfer?' + queryparamsa8.toString();
                    innerA8.setAttribute('href', kottransferurl);
                    innerA8.setAttribute('aria-expanded', 'true');
                    innerA8.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Transfer</span>';
                    innerLi.appendChild(innerA8);
                    innerUl.appendChild(innerLi);

                    const innerA9 = document.createElement('a');
                    const queryparamsa9 = new URLSearchParams();
                    queryparamsa9.set('dcode', item.dcode);
                    const paymentreceivedurl = '/paymentreceived?' + queryparamsa9.toString();
                    innerA9.setAttribute('href', paymentreceivedurl);
                    innerA9.setAttribute('aria-expanded', 'true');
                    innerA9.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Payment Received</span>';

                    innerLi.appendChild(innerA9);
                    innerUl.appendChild(innerLi);

                    const innerA11 = document.createElement('a');
                    innerA11.setAttribute('href', 'settlemententry/' + item.dcode);
                    innerA11.setAttribute('aria-expanded', 'true');
                    innerA11.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Settlement Entry</span>';

                } else if (item.kot_yn == 'Y' && ['ROOM SERVICE', 'Outlet'].includes(item.rest_type)) {
                    const innerA3 = document.createElement('a');
                    const queryparamsa3 = new URLSearchParams();
                    queryparamsa3.set('dcode', item.dcode);
                    const kotentryurl = '/kotentry?' + queryparamsa3.toString();
                    innerA3.setAttribute('href', kotentryurl);
                    innerA3.setAttribute('aria-expanded', 'true');
                    innerA3.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Entry</span>';
                    innerLi.appendChild(innerA3);
                    innerUl.appendChild(innerLi);

                    const innerA7 = document.createElement('a');
                    const queryParams = new URLSearchParams();
                    queryParams.set('dcode', item.dcode);
                    const displayTableUrl = '/displaytable?' + queryParams.toString();
                    innerA7.setAttribute('href', displayTableUrl);
                    innerA7.setAttribute('aria-expanded', 'true');
                    innerA7.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Display Table</span>';

                    innerLi.appendChild(innerA7);
                    innerLi.appendChild(innerA7);
                    innerUl.appendChild(innerLi);

                    const innerA8 = document.createElement('a');
                    innerA8.setAttribute('href', 'kottransfer/' + item.dcode);
                    innerA8.setAttribute('aria-expanded', 'true');
                    innerA8.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">KOT Transfer</span>';
                    innerLi.appendChild(innerA8);
                    innerUl.appendChild(innerLi);
                } else if (item.rest_type != 'ROOM SERVICE') {
                    const innerA10 = document.createElement('a');
                    const queryparamsa10 = new URLSearchParams();
                    queryparamsa10.set('dcode', item.dcode);
                    const splitbillurl = '/splitbill?' + queryparamsa10.toString();
                    innerA10.setAttribute('href', splitbillurl);
                    innerA10.setAttribute('aria-expanded', 'true');
                    innerA10.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Split Bill</span>';

                    innerLi.appendChild(innerA10);
                    innerUl.appendChild(innerLi);

                    const innerA11 = document.createElement('a');
                    const queryparamsa11 = new URLSearchParams();
                    queryparamsa11.set('dcode', item.dcode);
                    const settlemententryurl = '/settlemententry?' + queryparamsa11.toString();
                    innerA11.setAttribute('href', settlemententryurl);
                    innerA11.setAttribute('aria-expanded', 'true');
                    innerA11.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Settlement Entry</span>';

                    innerLi.appendChild(innerA11);
                    innerUl.appendChild(innerLi);
                } else if (item.order_booking == 'Y') {

                    const innerA12 = document.createElement('a');
                    const queryparamsa12 = new URLSearchParams();
                    queryparamsa12.set('dcode', item.dcode);
                    const orderbookingurl = '/orderbooking?' + queryparamsa12.toString();
                    innerA12.setAttribute('href', orderbookingurl);
                    innerA12.setAttribute('aria-expanded', 'true');
                    innerA12.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Order Booking</span>';

                    innerLi.appendChild(innerA12);
                    innerUl.appendChild(innerLi);

                    const innerA13 = document.createElement('a');
                    const queryparamsa13 = new URLSearchParams();
                    queryparamsa13.set('dcode', item.dcode);
                    const orderbookingadvanceurl = '/orderbookingadvance?' + queryparamsa13.toString();
                    innerA13.setAttribute('href', orderbookingadvanceurl);
                    innerA13.setAttribute('aria-expanded', 'true');
                    innerA13.innerHTML = '<i class="fa-brands fa-slack"></i><span class="nav-text">Order Booking Advance</span>';

                    innerLi.appendChild(innerA13);
                    innerUl.appendChild(innerLi);
                }

                innerLi.appendChild(innerA1);
                innerLi.appendChild(innerA2);
                innerUl.appendChild(innerLi);

                outerLi.appendChild(outerA);
                outerLi.appendChild(innerUl);
                outerUl.appendChild(outerLi);
                pointOfSale.appendChild(outerUl);
            });


        } else {
            // console.error('Request failed with status:', xhr.status);
        }
    };
    xhr.open('GET', 'getoutletlist', true);
    xhr.setRequestHeader('Content-Type', 'application/json');
    xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
    xhr.send();
}


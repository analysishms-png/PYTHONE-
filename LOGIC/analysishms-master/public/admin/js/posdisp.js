function openColorPicker(status) {
    var colorInput = getColorInput(status);
    colorInput.click();
}

// function updateBackgroundColor(status, color) {
//     if (color) {
//         let cstatusElements = document.getElementsByClassName('cstatus');
//         let colorcodeElements = document.getElementsByClassName('room-boxdisp');
//         for (let i = 0; i < cstatusElements.length; i++) {
//             let currentCStatus = parseInt(cstatusElements[i].value);
//             let currentColorCodeElement = colorcodeElements[i];
//             if (currentCStatus === 0 && status === 'vacant') {
//                 let tdElement = cstatusElements[i].closest('td');
//                 if (tdElement) {
//                     tdElement.style.backgroundColor = color;
//                     currentColorCodeElement.value = color;
//                     tdElement.style.color = isDarkColor(color) ? 'white' : 'black';
//                 }
//             }
//             else if (currentCStatus === 1 && status === 'occupied') {
//                 let tdElement = cstatusElements[i].closest('td');
//                 if (tdElement) {
//                     tdElement.style.backgroundColor = color;
//                     currentColorCodeElement.value = color;
//                     tdElement.style.color = isDarkColor(color) ? 'white' : 'black';
//                 }
//             }
//             else if (currentCStatus === 2 && status === 'billed') {
//                 let tdElement = cstatusElements[i].closest('td');
//                 if (tdElement) {
//                     tdElement.style.backgroundColor = color;
//                     currentColorCodeElement.value = color;
//                     tdElement.style.color = isDarkColor(color) ? 'white' : 'black';
//                 }
//             }
//         }

//         var selectedElement = document.querySelector('p[data-status="' + status + '"]');
//         let textCol = isDarkColor(color) ? 'white' : 'black';
//         if (selectedElement) {
//             selectedElement.style.backgroundColor = color;
//             selectedElement.style.color = textCol;
//         }
//     }
// }

function isDarkColor(hexColor) {
    r = hexdec(hexColor.substr(1, 2));
    g = hexdec(hexColor.substr(3, 2))
    b = hexdec(hexColor.substr(5, 2));
    brightness = (r * 299 + g * 587 + b * 114) / 1000;
    threshold = 128;
    return brightness < threshold;
}


function hexdec(hexString) {
    return parseInt(hexString, 16);
}

function getColorInput(status) {
    var colorInputId = status + 'Color';
    return document.getElementById(colorInputId);
}


function exportTable() {
    // Load the necessary CDN links for DataTables
    const cdnLinks = {
        styles: [
            "https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css",
            "https://cdn.datatables.net/buttons/2.3.2/css/buttons.dataTables.min.css"
        ],
        scripts: [
            "https://code.jquery.com/jquery-3.5.1.js",
            "https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js",
            "https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js",
            "https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js",
            "https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js",
            "https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js",
            "https://cdn.datatables.net/buttons/2.3.2/js/buttons.html5.min.js",
            "https://cdn.datatables.net/buttons/2.4.1/js/buttons.print.min.js"
        ]
    };

    // Load CSS styles dynamically
    cdnLinks.styles.forEach(function (link) {
        const linkElement = document.createElement('link');
        linkElement.rel = 'stylesheet';
        linkElement.href = link;
        document.head.appendChild(linkElement);
    });

    // Load scripts dynamically and return a promise for chaining
    return Promise.all(cdnLinks.scripts.map(src => {
        return new Promise((resolve, reject) => {
            const script = document.createElement('script');
            script.src = src;
            script.onload = resolve;
            script.onerror = reject;
            document.body.appendChild(script);
        });
    }));
}

function downloadTable(tableName, title, columnsToExport, columnToSearch, visibleButtons) {
    const exportColumnsJS = JSON.stringify(columnsToExport);
    const searchColumnsJS = JSON.stringify(columnToSearch);

    $(document).ready(function () {
        // Initialize DataTable with buttons
        const dataTable = $(`#${tableName}`).DataTable({
            dom: 'Bfrtip',
            pageLength: 15,
            buttons: [{
                extend: 'excelHtml5',
                text: 'Excel <i class="fa fa-file-excel-o"></i>',
                title: title,
                filename: title,
                exportOptions: {
                    columns: JSON.parse(exportColumnsJS)
                },
                visible: visibleButtons.includes('excel') // Show/Hide based on dynamic input
            },
            {
                extend: 'csvHtml5',
                text: 'Csv <i class="fa-solid fa-file-csv"></i>',
                title: title,
                filename: title,
                exportOptions: {
                    columns: JSON.parse(exportColumnsJS)
                },
                visible: visibleButtons.includes('csv') // Show/Hide based on dynamic input
            },
            {
                extend: 'pdfHtml5',
                text: 'Pdf <i class="fa fa-file-pdf-o"></i>',
                title: title,
                filename: title,
                exportOptions: {
                    columns: JSON.parse(exportColumnsJS)
                },
                visible: visibleButtons.includes('pdf') // Show/Hide based on dynamic input
            },
            {
                extend: 'print',
                text: 'Print <i class="fa-solid fa-print"></i>',
                title: title,
                filename: title,
                exportOptions: {
                    columns: JSON.parse(exportColumnsJS)
                },
                visible: visibleButtons.includes('print') // Show/Hide based on dynamic input
            }
            ],
            initComplete: function () {
                let searchColumns = JSON.parse(searchColumnsJS);
                this.api().columns(searchColumns).every(function () {
                    let column = this;
                    let title = column.header().textContent;
                    let input = document.createElement('input');
                    input.placeholder = title;
                    $(input).appendTo($(column.footer()).empty());
                    $(input).on('keyup', function () {
                        if (column.search() !== this.value) {
                            column.search(this.value).draw();
                        }
                    });
                });
            }
        });
    });
}

function destroyDataTable(selector) {
    if ($.fn.dataTable.isDataTable(selector)) {
        $(selector).DataTable().destroy();
        console.log(`DataTable for ${selector} destroyed.`);
    } else {
        console.log(`No DataTable found for ${selector}.`);
    }
}
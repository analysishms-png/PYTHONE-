function downloadTable(tableName, title, columnsToExport, columnToSearch) {
   let exportColumnsJS = JSON.stringify(columnsToExport);
   let searchColumnsJS = JSON.stringify(columnToSearch);

   $(document).ready(function () {
      let table = $(`#${tableName}`).DataTable({
         dom: 'Bfrtip',
         pageLength: 15,
         buttons: [
            {
               extend: 'excelHtml5',
               text: 'Excel <i class="fa fa-file-excel-o"></i>',
               title: title,
               filename: title,
               exportOptions: {
                  columns: JSON.parse(exportColumnsJS)
               }
            },
            {
               extend: 'csvHtml5',
               text: 'Csv <i class="fa-solid fa-file-csv"></i>',
               title: title,
               filename: title,
               exportOptions: {
                  columns: JSON.parse(exportColumnsJS)
               }
            },
            {
               extend: 'pdfHtml5',
               text: 'Pdf <i class="fa fa-file-pdf-o"></i>',
               title: title,
               filename: title,
               exportOptions: {
                  columns: JSON.parse(exportColumnsJS)
               }
            },
            {
               extend: 'print',
               text: 'Print <i class="fa-solid fa-print"></i>',
               title: title,
               filename: title,
               exportOptions: {
                  columns: JSON.parse(exportColumnsJS)
               }
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
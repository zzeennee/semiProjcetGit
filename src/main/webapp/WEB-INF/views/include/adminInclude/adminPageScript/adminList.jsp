<script>
  $(function () {
    $("#example1").DataTable({
      order: [ [ 0, "desc" ] ],
      "responsive": true, 
      "lengthChange": true, 
      "autoWidth": false,
      "buttons": ["print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
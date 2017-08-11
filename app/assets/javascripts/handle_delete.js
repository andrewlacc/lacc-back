// Handles when delete button is clicked for various things
handleDelete = function() {
  var id;

  $('tr').on("click", ".btn-danger", function(event) {
    id = event.delegateTarget.id.split('-');

    bootbox.confirm({
      message: 'Are you sure you want to delete id: ' + id[1],
      callback: function(response) {
        if(response === true) {
          $.ajax({
            url: '/' + id[0] + '/' + id[1],
            type: 'DELETE'
          });
        }
      }
    })
  })
}

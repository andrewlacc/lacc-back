handleClients = function() {
  var clientNames = [];

  $.ajax({
    url: '/get_clients'
  }).done(function(response) {
    _.each(response, function(data) {
      clientNames.push(data.name);
    });
  });

  $('#on_site_client_name').autocomplete({
    source: clientNames
  });

  $('#off_site_client_name').autocomplete({
    source: clientNames
  });
}

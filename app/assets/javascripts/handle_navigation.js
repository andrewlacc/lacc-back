handleNavigation = function() {
  $(".nav-link").removeClass("active");
  switch (location.pathname) {
    case ("/"):
      $("#home").addClass("active");
      break;
    case ("/computer"):
      $("#computers").addClass("active");
      break;
    case ("/display"):
      $("#displays").addClass("active");
      break;
    case ("/onsite"):
      $("#onsites").addClass("active");
      break;
    case ("/off_sites"):
      $("#offsites").addClass("active");
      break;
    case ("/clients"):
      $("#clients").addClass("active");
      break;
    case ("/cost"):
      $("#cost").addClass("active");
      break;
  }

  var createPopup = function(id, display) {
    $(id).tooltip({
      title: display,
      delay: {
        show: 500,
        hide: 0
      }
    });
  };

  createPopup("#home", "Home");
  createPopup("#computers", "Used Computer Sheets");
  createPopup("#displays", "Used Display Sheets");
  createPopup("#onsites", "On Sites");
  createPopup("#offsites", "Off Sites");
  createPopup("#clients", "Clients");
  createPopup("#cost", "Price List");

  // Open and close sidebar menu
  $('#onsite-open').on('click', function() {
    if (!$('#onsite-menu').hasClass('open')) {
      $('#onsite-menu').css('right', 0).addClass('open');
    } else {
      $('#onsite-menu').css('right', '-100vw').removeClass('open');
    }
  });

  $('#onsite-close').on('click', function() {
    $('#onsite-menu').css('right', '-100vw');
  });
}

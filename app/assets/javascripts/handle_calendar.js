handleCalendar = function() {
  var calendar = moment();
  var todayId = "#day-" + ((Math.floor(calendar.date() / 7) * 7) + calendar.day());
  var onsites = $('.onsite-data');

  $('#month').text(calendar.format('MMMM YYYY'));

  _.each(_.range(1, 43), function(day) {
    if($('#day-' + day)[0]) {
      $('#day-' + day)[0].children[0].innerHTML = moment().day(day).date();
    }
  });

  $(todayId).addClass('bg-secondary');

  // Open and close sidebar menu
  $('#onsite-open').on('click', function() {
    $('#onsite-menu').css('right', 0);
  });

  $('#onsite-close').on('click', function() {
    $('#onsite-menu').css('right', '-1121px');
  });

  // Build Cells to put to calendar
  var parseDateTime = function(dateTime) {
    return dateTime.toString().split("at  ");
  }

  var buildCellData = function() {
    var cellData = [];

    _.each($('.onsite-data'), function(data) {
      var cellObj = {
        id: data.children[0].innerHTML,
        date: parseDateTime(data.children[4].innerHTML)[0],
        cell: data.children[1].innerHTML + " at " + parseDateTime(data.children[4].innerHTML)[1]
      }

      cellData.push(cellObj);
    });

    _.each(cellData, function(data) {
      var dateId = "";
      var date = moment(data.date, "MM-DD-YYYY");

      if (date.month() === moment().month()) {
        dateId = ("#day-" + ((Math.floor(date.date() / 7) * 7) + date.day()));
        if ($(dateId)[0]) {
          $(dateId)[0].children[1].innerHTML = data.cell;
          $(dateId).on('click', function() {
            location.pathname = '/onsite/' + data.id;
          });
        }
      }
    });

  }();
}

handleCalendar = function() {
  var todayMoment = moment();
  var current = moment(todayMoment.month() + 1, "MM");
  var todayId = "#day-" + ((Math.floor(todayMoment.date() / 7) * 7) + todayMoment.day());
  var onsites = $('.onsite-data');

  var buildCalendar = function(date) {
    $(todayId).removeClass('bg-secondary');
    $('#month').text(date.format('MMMM YYYY'));

    _.each(_.range(1, 43), function(day) {
      if($('#day-' + day)[0]) {
        $('#day-' + day)[0].children[0].innerHTML = moment(date).day(day).date();
      }
    });

    if (date.month() === todayMoment.month()) {
      $(todayId).addClass('bg-secondary');
    }
  };

  buildCalendar(current);

  // Builds onsite information for calendar
  var parseDateTime = function(dateTime) {
    return dateTime.toString().split("at  ");
  }

  var buildCellData = function() {
    $('.onsites').text("");

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

      if (date.month() === current.month()) {
        dateId = ("#day-" + ((Math.floor(date.date() / 7) * 7) + date.day()));
        if ($(dateId)[0]) {
          $(dateId)[0].children[1].innerHTML = data.cell;
          $(dateId).on('click', function() {
            location.pathname = '/onsite/' + data.id;
          });
        }
      }
    });
  };
  buildCellData();

  // Adds Forward and backwards to calendar
  $('#prev-month').on('click', function() {
    current.subtract(1, 'months');
    buildCalendar(current);
    buildCellData();
  });

  $('#next-month').on('click', function() {
    current.add(1, 'months');
    buildCalendar(current);
    buildCellData();
  });
}

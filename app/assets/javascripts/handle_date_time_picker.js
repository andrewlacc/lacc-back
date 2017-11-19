handleDateTimePicker = function() {
  var buildCalendarShell = function() {
    var year = $('<div class="text-center">Year</div>');
    var month = $('<div class="text-center">Month</div>');
    var day = $('<div></div>');
    day.append($(`
      <div class="row">
        <div class="col-2">M</div>
        <div class="col-2">T</div>
        <div class="col-2">W</div>
        <div class="col-2">T</div>
        <div class="col-2">F</div>
        <div class="col-2">S</div>
      </div>
    `));

    _.each(_.range(0,4), function(w) {
      var week = $('<div class="row" data-toggle="buttons" id="week-' + w + '"></div>');

      _.each(_.range(1,7), function(d) {
        week.append($(`
          <label class="col-2 btn btn-light">
            <input type="radio" name="date" class="mini-calendar-cell">${d}</input>
          </label>
        `))
      });

      day.append(week);
    });

    var calendar = $('<div></div>');
    calendar.append(year, month, day);

    return calendar;
  }

  var buildCalendar = function() {
    // Shell
    calendar = buildCalendarShell();

    return calendar;
  };

  $('#datetimepicker').popover({
    html: true,
    placement: 'left',
    content: buildCalendar()
  });
}

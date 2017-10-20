handleDateTimePicker = function() {
  var buildYear = function(date) {
      var result = $('<select class="form-control">');
      for(var yr = date.year(); yr < (date.year() + 2); yr++) {
        result.append('<option>' + yr + '</option>');
      }
      result.append('</select>');

      return result;
  }

  var buildMonth = function(date) {
    var result = $('<div>');

    result.append('<option class="text-center">' + date.format("MMMM") + '</option>');

    result.append('</div>');

    return result;
  }

  var buildDay = function(date) {
    var result = $('<table>');
    var datesOfMonth = moment();
    var today = datesOfMonth.date();
    var activeDate = datesOfMonth.date();
    var firstDayWeek = datesOfMonth.date(today - (today - 1)).weekday();
    var totalDays = datesOfMonth.daysInMonth();

    var days = [];

    // builds array for week
    var eachDay = datesOfMonth.date(today - (today - 1)).date();
    for (var weeks = 0; weeks <= totalDays; weeks += 7) {
      var week = [];
      if (firstDayWeek != 0) {
        for (var i = firstDayWeek; i > 0; i--) {
          week.unshift(0);
        }
        firstDayWeek = 0;
      }
      for (var i = 1; i < 8; i++) {
        if (eachDay <= totalDays) {
          week.push(eachDay);
        }
        eachDay++;
      }
      days.push(week);
      week = [];
    }

    for (var w = 0; w <= totalDays / 7; w++) {
      result.append('<tr>');

      days[w].forEach(function(d) {
        if (d === activeDate) {
          result.append('<td>' + d + '</td>');
        } else {
          result.append('<td>' + d + '</td>');
        }
      })

      result.append('</tr>');
    }

    result.append('</table>');
    return result;
  }

  var buildHour = function() {
    var result = $('<select multiple class="col form-control">');
    for(var hr = 1; hr < 12; hr++) {
      result.append('<option>' + hr + '</option>');
    }
    result.append('</select>');

    return result;
  }

  var buildMinute = function() {
    var result = $('<select multiple class="col form-control">');
    for(var min = 0; min < 56; min += 5) {
      result.append('<option>' + min + '</option>');
    }
    result.append('</select>');

    return result;
  }

  var buildAMPM = function() {
    var result = $('<select multiple class="col form-control">');
    result.append('<option>AM</option>');
    result.append('<option>PM</option>');

    return result;
  }

  var buildCalendar = function () {
    var date = moment();
    var ampm = "AM";

    var calendarTimer = $('<div></div>');
    var calendar = $('<div></div>');
    var timer = $('<div class="row"></div>');

    var year = buildYear(date);
    year.on("click", function(event) {
      date.year(event.target.value);
    });

    var month = buildMonth(date);
    month.on("click", function(event) {

    });

    var day = buildDay(date);
    day.on("click", function(event) {
      date.date(event.target.innerHTML);
    });

    calendar.append(year, month, day);
    calendarTimer.append(calendar);

    var hour = buildHour();
    hour.on("click", function(event) {
      date.hour(event.target.value);
    });

    var minute = buildMinute();
    minute.on("click", function(event) {
      date.minute(event.target.value)
    });

    var ampm = buildAMPM();
    ampm.on("click", function(event) {
      if (event.target.value === "PM" && ampm != "PM") {
        date.hour(date.hour() + 12);
        ampm = "PM";
      } else if (event.target.value === "AM" && ampm != "AM") {
        date.hour(date.hour() - 12);
        ampm = "AM";
      }
    });
    
    timer.append(hour, minute, ampm);
    calendarTimer.append(timer);

    var submit = $('<button class="btn btn-light">Submit</button>');
    submit.on("click", function(event) {
      $('#on_site_onsite_date').val(date.format("YYYY-MM-DD HH:mm:ss"));
    });

    calendarTimer.append(submit);
    return calendarTimer;
  }

  $('#datetimepicker').popover({
    html: true,
    placement: 'left',
    content: buildCalendar()
  });
}

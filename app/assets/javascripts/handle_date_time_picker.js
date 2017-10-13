handleDateTimePicker = function() {
  var buildCalendar = function () {
    var date = {
      year: "",
      month: "",
      day: ""
    };
    var time = {
      hour: "",
      minute: "",
      second: "00",
      ampm: "AM"
    };
    var calendarTimer = $('<div></div>');
    var calendar = $('<div></div>');
    var timer = $('<div class="row"></div>');

    var year = function() {
      var result = $('<select class="form-control">');
      for(var yr = moment().year(); yr < (moment().year() + 2); yr++) {
        result.append('<option>' + yr + '</option>');
      }
      result.append('</select>');

      return result;
    }();
    year.on("click", function(event) {
      date.year = event.target.value;
    });
    var month = function() {
      var result = $('<select class=" form-control">');
      for(var mo = 1; mo < 12; mo++) {
        result.append('<option>' + mo + '</option>');
      }
      result.append('</select>');

      return result;
    }();
    month.on("click", function(event) {
      date.month = event.target.value;
    });
    var day = function() {
      var result = $('<select multiple class="col form-control">');
      for(var dy = 1; dy < 12; dy++) {
        result.append('<option>' + dy + '</option>');
      }
      result.append('</select>');

      return result;
    }();
    day.on("click", function(event) {
      date.day = event.target.value;
    });
    calendar.append(year, month, day);
    calendarTimer.append(calendar);

    var hour = function() {
      var result = $('<select multiple class="col form-control">');
      for(var hr = 1; hr < 12; hr++) {
        result.append('<option>' + hr + '</option>');
      }
      result.append('</select>');

      return result;
    }();
    hour.on("click", function(event) {
      time.hour = event.target.value;
    });
    var minute = function() {
      var result = $('<select multiple class="col form-control">');
      for(var min = 0; min < 56; min += 5) {
        result.append('<option>' + min + '</option>');
      }
      result.append('</select>');

      return result;
    }();
    minute.on("click", function(event) {
      time.minute = event.target.value;
    });
    var ampm = function() {
      var result = $('<select multiple class="col form-control">');
      result.append('<option>AM</option>');
      result.append('<option>PM</option>');

      return result;
    }();
    ampm.on("click", function(event) {
      time.ampm = event.target.value;
    });
    timer.append(hour, minute, ampm);
    calendarTimer.append(timer);

    var submit = $('<button class="btn btn-light">Submit</button>');
    submit.on("click", function(event) {
      $('#on_site_onsite_date').val(function() {
        var result = ""

        result += date.year + "-" + date.month + "-" + date.day + " "

        var military = (time.ampm === "AM") ? time.hour : _.toNumber(time.hour) + 12;
        result += military + ":" + time.minute + ":" + time.second +  " "

        result += "UTC";
        return result;
      }());
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

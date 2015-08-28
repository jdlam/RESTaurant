var timers;
var difference=[];
$(document).ready(function() {
  console.log('loaded')
  timers = $(".timer");
  for (var i=0; i<timers.length; i++) {
    difference[i] = Number(timers[i].innerText)/60;
    if (Math.floor(difference[i]) % 2 == 0) {
      $(".timer").addClass('red');
    } else {

    }
  }
});

function millisToSeconds(millis) {
  var seconds = millis/1000;
  return seconds;
}

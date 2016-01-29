$(document).ready(function() {
  kitchenTimers();
});

function kitchenTimers(){
  $(".timer").hide();
  var timers = $(".timer");
  var difference = [];
  for (var i=0; i<timers.length; i++) {
    difference[i] = secondsToMinutes(Number(timers[i].innerText));
    if  ((difference[i]) > 1) {
      $(".timer")[i].closest(".list").classList.add('hurry');
    } else if ((difference[i]) > 0.5) {
      $(".timer")[i].closest(".list").classList.add('hurryupplease');
    } else {
      $(".timer")[i].closest(".list").classList.add('okay');
    }
  };
};

function secondsToMinutes(seconds) {
  return seconds/60;
};

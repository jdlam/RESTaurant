$(document).ready(function() {

  console.log('validator');
  validate();
  $('input[type=text]').change(validate);
});

function validate() {
  var checker = 0;
  var text = $('input[type=text]');
  for (var i=0; i<text.length; i++) {
    if (text[i].value > 0) {
      checker++;
    }
  }
  if (checker++ === text.length) {
    $('input[type=submit]').prop("disabled", "false");
  } else {
    $('input[type=submit]').prop("disabled", "true");
  }
}

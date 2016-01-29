$(document).ready(function(){
  validate();
  $('input').change(validate);
})

function validate() {
  var checker = 0;
  var $select = $('select');
  for (var i=0; i<$select.length; i++) {
    if ($select[i].value != "") {
      checker++;
    }
  }
  if (checker == $select.length) {
    $('input[type=submit]').prop('disabled', false);
  } else {
    $('input[type=submit]').prop("disabled", true);
  }
}

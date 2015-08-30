$(document).ready(function(){
  $('.collapsible').collapsible({
    accordion : false
  });
  $('select').material_select();
  $('.button-collapse').sideNav({
    menuWidth: 200,
    edge: 'left',
    closeOnClick: true
  });
})

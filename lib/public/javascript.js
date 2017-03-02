$(document).ready(function() {
$('#show-less').hide()
$('#show-more').on('click', function() {
  event.preventDefault();
  $('#call-charge-details').show();
  $('#show-less').show();
  $(this).hide()
});
  $('#show-less').on('click', function() {
    event.preventDefault();
    $('#call-charge-details').hide();
    $(this).hide()
    $('#show-more').show();
  });
});

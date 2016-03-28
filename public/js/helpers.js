function toggle(div_id) {
  var div = document.getElementById(div_id);
  var div_state = div.style.display;
  if(div_state == 'block') {
    div.style.display = 'none';
  } else {
    div.style.display = 'block';
  }
}

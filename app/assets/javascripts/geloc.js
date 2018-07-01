function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
}

function setGeoCookie(position) {
  var cookie_val1 = position.coords.latitude;
  var cookie_val2 = position.coords.longitude;
  document.cookie = "x_2=" + escape(cookie_val1);
  document.cookie = "y_2=" + escape(cookie_val2);
}

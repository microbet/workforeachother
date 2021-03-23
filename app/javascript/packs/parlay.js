var elem = document.getElementById("clickable")
elem.addEventListener('click', function() {
  var elem2 = document.getElementById("hide");
  elem2.className = 'visible';
});

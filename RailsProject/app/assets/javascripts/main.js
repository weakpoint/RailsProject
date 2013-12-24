var dayImage = document.getElementById("dayImage");
var nightImage = document.getElementById("nightImage");
var daySelect = document.getElementById("daySelect");

daySelect.onchange = function(){

  dayImage.src = "http://pogodynka.pl/http/assets/products/main_page_maps/day_"+this.options[this.selectedIndex].value+"d.jpg";
  nightImage.src = "http://pogodynka.pl/http/assets/products/main_page_maps/day_"+this.options[this.selectedIndex].value+"n.jpg";
}
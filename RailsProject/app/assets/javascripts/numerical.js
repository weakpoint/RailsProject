var mapImage = document.getElementById("mapImage");
var citySelect = document.getElementById("citySelect");

citySelect.onchange = function(){

  mapImage.src = "http://www.meteo.pl/um/metco/mgram_pict.php?ntype=0u&fdate=2013122406&"+this.options[this.selectedIndex].value+"&lang=pl";
  
}

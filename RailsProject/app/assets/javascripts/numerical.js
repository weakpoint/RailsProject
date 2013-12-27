var mapImage = document.getElementById("mapImage");
var citySelect = document.getElementById("citySelect");
var dateandtime = document.getElementById("dateandtime");

citySelect.onchange = function(){

  mapImage.src = "http://www.meteo.pl/um/metco/mgram_pict.php?ntype=0u&fdate="+dateandtime.innerHTML+"&"+this.options[this.selectedIndex].value+"&lang=pl";
  
}

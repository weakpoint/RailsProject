class NumericalController < ApplicationController
  def forecast
  setDateAndTime()
  
  @linkToMapImage = "blank pic.png"
  @cities = {"--" => "", "Bialystok" => "row=379&col=285", "Bydgoszcz" => "row=381&col=199", "Gdansk" => "row=346&col=210", "Gorzow Wielkopolski" => "row=390&col=152", "Katowice" => "row=461&col=215", "Kielce" => "row=443&col=244", "Krakow" => "row=466&col=232", "Lublin" => "row=432&col=277", "Lodz" => "row=418&col=223", "Olsztyn" => "row=363&col=240", "Opole" => "row=449&col=196", "Poznan" => "row=400&col=180", "Rzeszow" => "row=465&col=269", "Szczecin" => "row=383&col=209", "Torun" => "row=383&col=209", "Warszawa" => "row=406&col=250", "Wroclaw" => "row=436&col=181", "Zielona Gora" => "row=412&col=155"}
  end
  
  private
  def setDateAndTime
  require 'date'
  date = Time.now.strftime("%Y%m%d")
  time = Time.now.strftime("%H").to_i
  
  if (time>= 2 && time < 10)
  hour = "00"
  elsif (time>= 10 && time < 16)
  hour = "06"
  elsif (time>= 16 && time < 22)
  hour = "12"
  else 
  hour = "18"
  end
  
  @dateandtime = ""+date+hour
  
  end
end

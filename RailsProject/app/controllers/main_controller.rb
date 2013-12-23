class MainController < ApplicationController
	
	
  def index
  generateListOfDays()
  @dayImageURL = "http://pogodynka.pl/http/assets/products/main_page_maps/day_"
  generateLinks()
  end
	
  def generateListOfDays
  require 'date'
  @days = {"Teraz" => "0000-00-00", "Niedziela" =>Date.today.to_s}
  end
  
  def generateLinks
  @linkToDayImage = @dayImageURL+"0000-00-00d.jpg"
  @linkToNightImage = @dayImageURL+"0000-00-00n.jpg"
  end
end

class MainController < ApplicationController
		
  def index
  generateListOfDays()
  @dayImageURL = "http://pogodynka.pl/http/assets/products/main_page_maps/day_"
  @linkToDayImage = @dayImageURL+"0000-00-00d.jpg"
  @linkToNightImage = @dayImageURL+"0000-00-00n.jpg"
  end
	
  def generateListOfDays
  require 'date'
  @days = Hash.new
  @days["Teraz"] = "0000-00-00"
  @days["Dzisiaj"] = Date.today.to_s
  
  for i in 1..5
   @days[(Date.today+i).to_s] = (Date.today+i).to_s
	end
  end
end

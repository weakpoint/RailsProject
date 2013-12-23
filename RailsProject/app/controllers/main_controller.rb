class MainController < ApplicationController
	
  def index
  @dayImageURL = "http://pogodynka.pl/http/assets/products/main_page_maps/"
  @linkToDayImage = @dayImageURL+"day_2013-12-23d.jpg"
  @linkToNightImage = @dayImageURL+"day_2013-12-23n.jpg"
  end
end

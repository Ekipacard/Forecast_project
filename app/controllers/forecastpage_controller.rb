class ForecastpageController < ApplicationController

	def location_params
    params.require(:Location).permit(:city)
  	end

	def test
		

		@response = Weather.get_weather("40.71","-74")
		@response = Weather.extract
		
		@response2 = Weather.get_weather("48.85","2.34")
		@response2 = Weather.extract
				

	end

	def add

		puts params
		city = Place.create(:city => params[:place])
		puts city
		@response3 = Place.coord
		@response3 = Place.extrcoord

		redirect_to :action => 'test'

	end
	
	

end

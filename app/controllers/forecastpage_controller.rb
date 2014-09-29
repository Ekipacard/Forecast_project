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

		city = Location.create(:city => params[:place])
		@response3 = Location.coord
		@response3 = Location.extrcoord

		redirect_to :action => 'test'

	end
	
	

end

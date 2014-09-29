require 'json'
require 'rubygems'
require 'forecast_io'
class Weather < ActiveRecord::Base

		@apiKey='75fd44fa0ce99d75d0d6b1b2754e1549'

		include HTTParty

  		base_uri "api.forecast.io"
  		format :json
      
  		def self.get_weather(lat,long)
  			puts "/forecast/#{@apiKey}/#{lat},#{long}"
    		@response = get("/forecast/#{@apiKey}/#{lat},#{long}?units=si")
    		return @response
  		end

  		def self.extract
  			JSON.parse(@response.body)
  		end
end	
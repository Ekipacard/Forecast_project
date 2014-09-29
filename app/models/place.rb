require 'json'
require 'rubygems'
class Place < ActiveRecord::Base
	include HTTParty
  	
  	attr_accessor :city
    #field :city    

  	format :json	
  	base_uri "maps.googleapis.com"
	
    def self.coord
      	puts "/maps/api/geocode/json?address=#{:city}"
    	@response = get("/maps/api/geocode/json?address=#{:city}")

    	return @response
  	end

  	def self.extrcoord
  			JSON.parse(@response.body)
  	end
end

    		


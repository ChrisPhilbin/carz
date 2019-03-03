require 'sinatra'
require_relative './config/environment'

class Carz < Sinatra::Base

	get '/' do
		@cars = Car.all
		erb :index
	end

	get '/cars/:id' do
		@car = Car.find_by(id: params[:id]) #returns individal car object assigned to the id
		@repair = @car.repairs #return an array of all repair objects assigned to the car 
		erb :list_repairs

end
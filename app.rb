require 'sinatra'
require_relative './config/environment'

class Carz < Sinatra::Base

	get '/' do
		@cars = Car.all
		erb :index
	end

	get '/car/:id' do
		@car = Car.find_by(id: params[:id]) #returns individal car object assigned to the id
		@repairs = @car.repairs #return an array of all repair objects assigned to the car 
		erb :list_repairs
	end

	get '/car/:id/add_repair' do
		@car = Car.find_by(id: params[:id])
		@repair = Repair.new #create a blank repair object and pass it in to the template
		erb :new_repair
	end

	post '/repairs' do
		 @repair = Repair.new(params[:repair])
		 @repair.save
		 redirect "/"
	end

end
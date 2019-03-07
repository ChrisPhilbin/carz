require 'sinatra'
require_relative './config/environment'

class Carz < Sinatra::Base

	#index for app
	get '/' do
		@cars = Car.all
		erb :index
	end

	#list all repairs for car with :id
	get '/car/:id' do
		@car = Car.find_by(id: params[:id]) #returns individal car object assigned to the id
		@repairs = @car.repairs #return an array of all repair objects assigned to the car 
		erb :list_repairs
	end

	#add a new car to the database
	get '/add_car' do
		@car = Car.new
		erb :new_car
	end

	#add a repair to car with specified id
	get '/car/:id/add_repair' do
		@car = Car.find_by(id: params[:id])
		@repair = Repair.new #create a blank repair object and pass it in to the template
		erb :new_repair
	end

	#create a new repair, save repair to the database and redirect to the index
	post '/repairs' do
		 @repair = Repair.new(params[:repair])
		 @repair.save
		 redirect "/"
	end

	#create a new car, save it to the database and redirect to the index
	post '/cars' do
		 @car = Car.new(params[:car])
		 @car.save
		 redirect "/"
	end

	#select which car to delete from the database
	get '/remove_car' do
		@cars = Car.all #pass in array of all car objects
		erb :remove_car
	end

	post '/remove' do
		@car = Car.find_by(params[:id])
		@car.delete
		redirect "/"
	end

end
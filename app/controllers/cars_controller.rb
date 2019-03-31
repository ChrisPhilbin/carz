class CarsController < ApplicationController

	#display a list of all cars
	get '/cars' do
		@cars = Car.all
		erb :index
	end

	#add a new car to the database
	get '/cars/new' do
		redirect_if_not_logged_in
		@car = Car.new
		erb :'cars/new_car'
	end

	#create a new car, save it to the database and redirect to the index
	post '/cars' do
		 @car = Car.new(params[:car])
		 @car.save
		 redirect "/"
	end

	#list all repairs for car with :id
	get '/cars/:id' do
		@car = Car.find_by(id: params[:id]) #returns individal car object assigned to the id
		@repairs = @car.repairs #return an array of all repair objects assigned to the car 
		erb :'cars/show_car'
	end

	# get '/cars/:id/edit' do

	# end

	#add a repair to car with specified id
	get '/cars/:id/add_repair' do
		@car = Car.find_by(id: params[:id])
		@repair = Repair.new #create a blank repair object and pass it in to the template
		erb :new_repair
	end

	#select which car to delete from the database
	get '/remove_car' do
		@cars = Car.all #pass in array of all car objects
		erb :remove_car
	end

	#use post method instead of delete - Sinatra does not support delete
	post '/cars/:id' do
		@car = Car.find_by(id: params[:id])
		@car.delete
		redirect "/"
	end

end
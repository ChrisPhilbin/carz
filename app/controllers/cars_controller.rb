class CarsController < ApplicationController

	get '/cars' do
		redirect_if_not_logged_in
		@cars = current_user.cars.all
		erb :index
	end

	get '/cars/new' do
		redirect_if_not_logged_in
		@car = Car.new
		erb :'cars/new_car'
	end

	post '/cars' do
		 redirect_if_not_logged_in
		 @car = Car.new(params[:car])
		 @car.save
		 redirect "/cars"
	end

	get '/cars/:id' do
		redirect_if_not_logged_in
		@car = Car.find_by(id: params[:id])
		@repairs = @car.repairs
		erb :'cars/show_car'
	end

	get '/cars/:id/add_repair' do
		redirect_if_not_logged_in
		@car = Car.find_by(id: params[:id])
		@repair = Repair.new
		erb :new_repair
	end

	get '/remove_car' do
		redirect_if_not_logged_in
		@cars = Car.all
		erb :remove_car
	end

	post '/cars/:id' do
		redirect_if_not_logged_in
		@car = Car.find_by(id: params[:id])
		@car.delete
		redirect "/"
	end

end
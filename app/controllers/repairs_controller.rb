class RepairsController < ApplicationController

	post '/repairs' do
   		 redirect_if_not_logged_in
		 @repair = Repair.new(params[:repair])
		 @repair.save
		 redirect "/cars"
	end

	get '/repairs/new' do
		redirect_if_not_logged_in
		@car = Car.find_by(id: params[:car_id])
		@repair = Repair.new
		erb :'repairs/new_repair'
	end

	get '/repairs/:id/edit' do
		redirect_if_not_logged_in
		@repair = Repair.find_by(id: params[:id])
		erb :'/repairs/edit_repair'
	end


	post "/repairs/:id" do
		redirect_if_not_logged_in
		@repair = Repair.find_by(id: params[:id])
		@repair.update(params[:repair])
		redirect "/cars"
	end

end
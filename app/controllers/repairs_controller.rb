class RepairsController < ApplicationController

	post '/repairs' do
		 @repair = Repair.new(params[:repair])
		 @repair.save
		 redirect "/"
	end

	get "/repairs/:id" do
		@repair = Repair.find_by(id: params[:id])
		erb :'repairs/edit_repair'
	end

	post "/repairs/:id" do
		@repair = Repair.find_by(id: params[:id])
		@repair.update(params[:repair])
		redirect "/"
	end

end
require 'sinatra'
require_relative './config/environment'

class ApplicationController < Sinatra::Base

	configure do
		set :public_folder, 'public'
		set :views, './views'
		enable :sessions
		set :session_secret, "carzrepairtracker"
	end

	#index for app
	get '/' do
		erb :'users/login'
	end

	helpers do
	    def logged_in?
	      !!session[:user_id]
	    end

	    def current_user
	      User.find(session[:user_id])
		end
	end

end
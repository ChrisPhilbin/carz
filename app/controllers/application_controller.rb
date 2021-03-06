require 'sinatra'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base

	configure do
		set :public_folder, 'public'
		set :views, './views'
		enable :sessions
		set :session_secret, "carsrepairtracker"
		set :environment, :production
	end

	get '/' do
		if logged_in?
			redirect '/cars'
		else
			redirect '/login'
		end
	end

	helpers do
		def redirect_if_not_logged_in
			if !logged_in?
        		redirect "/login"
      		end
		end

	    def logged_in?
	      !!session[:user_id]
	    end

	    def current_user
	      User.find(session[:user_id])
		end
	end

end
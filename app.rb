require 'sinatra'

class Carz < Sinatra::Base

	get '/' do
		"Hello, world!"
	end

	get '/:name' do
		"Hello #{params[:name]}"
	end
end
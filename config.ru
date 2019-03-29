require './config/environment'
use Rack::MethodOverride
use CarsController
use UsersController
user RepairsConroller
run ApplicationController
require './config/environment'
use Rack::MethodOverride
use CarsController
use UsersController
use RepairsController
run ApplicationController
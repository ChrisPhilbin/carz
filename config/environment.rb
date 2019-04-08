ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'rake'
require 'sinatra/activerecord'

Bundler.require

connection_details = YAML::load(File.open('config/database.yml'))

ActiveRecord::Base.establish_connection(connection_details)

require_all 'app'

require_relative 'tasker_app'
require 'sequel'

default_connection_string = 'postgres://gschool_user:password@localhost/tasker_database_development'
DB = Sequel.connect(ENV["DATABASE_URL"] || default_connection_string)

run TaskerApp
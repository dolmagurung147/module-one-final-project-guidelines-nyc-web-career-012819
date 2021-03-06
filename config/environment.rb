require 'bundler'
# require 'dotenv/load'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger.level = 1  #if this is active we will not be able to use rake functions
require_all 'lib'
require_all 'app'
require_relative '../app/models/art.rb'

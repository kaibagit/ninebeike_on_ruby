# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

# load sneakers tasks
require 'sneakers/tasks'

require File.expand_path('../config/application', __FILE__)
Rails.application.load_tasks

# config/initializers/sneakers.rb
Sneakers.configure({})
Sneakers.logger.level = Logger::INFO # the default DEBUG is too noisy



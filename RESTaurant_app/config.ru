# CONFIG
require 'bundler'
Bundler.require()

# MODELS
require './models/apartment'
require './models/building'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/orders_controller'
require './controllers/tables_controller'

# ROUTING
map('/tables'){ run TablesController }
map('/orders'){ run OrdersController }
map('/admin'){ run AdminController }
map('/'){ run WelcomeController }

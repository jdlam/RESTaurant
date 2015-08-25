# CONFIG
require 'bundler'
Bundler.require()

# MODELS
require './models/food'
require './models/order'
require './models/party'
require './models/server'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/admin_controller'
require './controllers/foods_controller'
require './controllers/orders_controller'
require './controllers/parties_controller'
require './controllers/welcome_controller'
require './controllers/servers_controller'

# ROUTING
map('/admin'){ run AdminsController }
map('/foods'){ run FoodsController }
map('/orders'){ run OrdersController }
map('/parties'){ run PartiesController }
map('/servers'){ run ServersController }
map('/'){ run WelcomeController }

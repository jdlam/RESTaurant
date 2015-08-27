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
require './controllers/kitchen_controller'

# ROUTING
map('/'){ run WelcomeController }
map('/admin'){ run AdminsController }
map('/admin/foods'){ run FoodsController }
map('/admin/servers'){ run ServersController }
map('/parties'){ run PartiesController }
map('/parties/orders'){ run OrdersController }
map('/kitchen'){ run KitchensController }

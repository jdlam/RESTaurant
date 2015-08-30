# CONFIG
require 'bundler'
Bundler.require()

# MODELS
require './models/food'
require './models/order'
require './models/party'
require './models/server'
require './models/category'
require './models/receipt'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/admin_controller'
require './controllers/foods_controller'
require './controllers/orders_controller'
require './controllers/parties_controller'
require './controllers/servers_controller'
require './controllers/kitchen_controller'
require './controllers/categories_controller'
require './controllers/receipts_controller'

# ROUTING
map('/'){ run PartiesController }
map('/orders'){ run OrdersController }
map('/receipts'){ run ReceiptsController }
map('/admin'){ run AdminsController }
map('/admin/foods'){ run FoodsController }
map('/admin/categories'){ run CategoriesController }
map('/admin/servers'){ run ServersController }
map('/kitchen'){ run KitchensController }

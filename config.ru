require 'bundler'
Bundler.require

require './models/party'
require './models/food'
require './models/party_order'
require './models/table'
require './models/waiter'

# Controllers

require './controllers/application_controller'
require './controllers/landing_controller'
require './controllers/party_controller'
require './controllers/order_controller'
require './controllers/waiter_controller'
require './controllers/menu_controller'
require './controllers/kitchen_controller'
require './controllers/admin_controller'

# Routing

map('/'){ run LandingController }
map('/parties'){ run PartyController }
map('/orders'){ run OrderController }
map('/waiters'){ run WaiterController }
map('/menu'){ run MenuController }
map('/kitchen'){ run KitchenController }
map('/admin'){ run AdminController }

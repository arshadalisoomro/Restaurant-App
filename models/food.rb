class Food < ActiveRecord::Base
  has_many :party_orders
  has_many :parties, through: :party_orders
end

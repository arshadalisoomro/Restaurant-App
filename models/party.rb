class Party < ActiveRecord::Base
  belongs_to :table
  belongs_to :waiter
  has_many :party_orders
  has_many :foods, through: :party_orders
end

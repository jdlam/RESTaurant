class Party < ActiveRecord::Base
  has_many :orders
  has_many :foods, through: :orders
  belongs_to :server
  has_one :receipt
end

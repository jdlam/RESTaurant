class Server < ActiveRecord::Base
  has_many :parties
  has_many :orders, through: :parties
  has_many :receipts, through: :parties
end

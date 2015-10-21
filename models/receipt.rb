class Receipt < ActiveRecord::Base
  has_one :party
  belongs_to :server
end

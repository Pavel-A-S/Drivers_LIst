class Truck < ActiveRecord::Base
  has_one :routes_truck
  has_many :routes, through: :routes_truck
end

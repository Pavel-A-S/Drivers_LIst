class Route < ActiveRecord::Base
  has_one :drivers_route
  has_one :routes_truck
  has_one :truck, through: :routes_truck
end

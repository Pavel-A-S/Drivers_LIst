class RoutesTruck < ActiveRecord::Base
  belongs_to :route
  belongs_to :truck
end

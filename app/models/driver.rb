class Driver < Employee
  has_one :drivers_route
  has_one :route, through: :drivers_route
end

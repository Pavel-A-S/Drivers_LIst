class DriversRoute < ActiveRecord::Base
  belongs_to :driver
  belongs_to :route
end

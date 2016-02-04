class DriversListController < ApplicationController
  def index
    @drivers = Driver.all
  end
end

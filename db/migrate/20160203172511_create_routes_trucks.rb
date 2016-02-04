class CreateRoutesTrucks < ActiveRecord::Migration
  def change
    create_table :routes_trucks do |t|
      t.integer :route_id
      t.datetime :from_at
      t.datetime :to_at
      t.integer :truck_id

      t.timestamps null: false
    end
  end
end

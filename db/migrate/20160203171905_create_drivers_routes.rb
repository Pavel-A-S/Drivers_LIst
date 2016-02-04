class CreateDriversRoutes < ActiveRecord::Migration
  def change
    create_table :drivers_routes do |t|
      t.integer :driver_id
      t.datetime :driving_from_at
      t.datetime :driving_to_at
      t.integer :route_id

      t.timestamps null: false
    end
  end
end

class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :label
      t.integer :colli_in_truck
      t.decimal :turnover
      t.string :last_lat_lng

      t.timestamps null: false
    end
  end
end

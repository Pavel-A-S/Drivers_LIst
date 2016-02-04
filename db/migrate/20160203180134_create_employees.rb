class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :type
      t.string :name
      t.datetime :last_connected_at
      t.timestamps null: false
    end
  end
end

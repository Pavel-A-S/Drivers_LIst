class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :message_id
      t.integer :recipientable_id
      t.string :recipientable_type
      t.string :state

      t.timestamps null: false
    end
    add_index :recipients, :recipientable_id
  end
end

class CreateVenueUsers < ActiveRecord::Migration
  def change
    create_table :venue_users do |t|
      t.integer :venue_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

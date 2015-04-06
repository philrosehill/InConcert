class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.text :venue_description

      t.timestamps null: false
    end
  end
end

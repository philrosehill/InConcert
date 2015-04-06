class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.interger :performer_id
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end

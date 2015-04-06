class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.references :performer_id, index: true
      t.references :venue_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :gigs, :performer_ids
    add_foreign_key :gigs, :venue_ids
  end
end

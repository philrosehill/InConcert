class CreateGigUsers < ActiveRecord::Migration
  def change
    create_table :gig_users do |t|
      t.integer :gig_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

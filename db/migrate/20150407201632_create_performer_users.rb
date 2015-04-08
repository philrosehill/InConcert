class CreatePerformerUsers < ActiveRecord::Migration
  def change
    create_table :performer_users do |t|
      t.integer :performer_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

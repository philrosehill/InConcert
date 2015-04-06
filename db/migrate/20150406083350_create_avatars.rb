class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :filename
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :avatars, :users
  end
end

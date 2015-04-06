class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :performer_name
      t.text :performer_description

      t.timestamps null: false
    end
  end
end

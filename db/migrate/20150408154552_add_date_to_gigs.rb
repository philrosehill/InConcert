class AddDateToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :date, :string
  end
end

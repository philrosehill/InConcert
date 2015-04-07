class AddVenueZipCodeToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :venue_zip_code, :integer
  end
end

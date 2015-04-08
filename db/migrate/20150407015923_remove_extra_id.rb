class RemoveExtraId < ActiveRecord::Migration
  def change
  	rename_column :gigs, :performer_id_id, :performer_id
  	rename_column :gigs, :venue_id_id, :venue_id
  end
end

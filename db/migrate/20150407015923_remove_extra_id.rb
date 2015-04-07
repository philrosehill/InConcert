class RemoveExtraId < ActiveRecord::Migration
  def change
  	change_column :gigs, :performer_id_id, :performer_id
  	change_column :gigs, :venue_id_id, :venue_id
  end
end

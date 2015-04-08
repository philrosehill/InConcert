class FixJoinTables < ActiveRecord::Migration
  def change
  	rename_table :performer_users, :performers_users
  	rename_table :gig_users, :gigs_users
  	rename_table :venue_users, :users_venues
  end
end

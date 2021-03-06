class GigsTable < TableCloth::Base
  column :id do |gig|
    link_to "#{gig.id}", gig_path(gig) 
  end

  column :performer do |gig|
    link_to "#{gig.performer.performer_name}", performer_path(gig.performer) 
  end

  column :venue do |gig|
    link_to "#{gig.venue.venue_name}", venue_path(gig.venue)
  end

  column :date

  actions separator: ' - ' do
    action do |gig|
      link_to "Edit Gig", edit_gig_path(gig)
    end
  end
    
  config.table.class = "table table-bordered"
  
  # Define columns with the #column method
  # column :name, :email

  # Columns can be provided a block
  #
  # column :name do |object|
  #   object.downcase
  # end
  #
  # Columns can also have conditionals if you want.
  # The conditions are checked against the table's methods.
  # As a convenience, the table has a #view method which will return the current view context.
  # This gives you access to current user, params, etc...
  #
  # column :email, if: :admin?
  #
  # def admin?
  #   view.current_user.admin?
  # end
  #
  # Actions give you the ability to create a column for any actions you'd like to provide.
  # Pass a block with an arity of 2, (object, view context).
  # You can add as many actions as you want.
  # Make sure you include the actions extension.
  #
  # actions do
  #   action {|object| link_to "Edit", edit_object_path(object) }
  #   action(if: :valid?) {|object| link_to "Invalidate", invalidate_object_path(object) }
  # end
  #
  # If action provides an "if:" option, it will call that method on the object. It can also take a block with an arity of 1.
end

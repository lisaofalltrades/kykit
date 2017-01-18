class Purchase < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :shoe
  belongs_to :purchaser, :class_name => "User"
end

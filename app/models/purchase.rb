class Purchase < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :shoe
end

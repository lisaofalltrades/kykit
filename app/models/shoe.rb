class Shoe < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :seller, :class_name => "User"
  has_many :sales, :class_name => "Purchase"
  has_many :orders, :through => :sales
  has_many :purchasers, :through => :orders, :source => :purchaser
end

class Order < ActiveRecord::Base
  has_many :purchases
  belongs_to :purchaser, :class_name => "User"
end

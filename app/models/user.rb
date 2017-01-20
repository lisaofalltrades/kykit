class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :listed_shoes, :foreign_key => :seller_id, :class_name => "Shoe"
  has_many :purchases, :foreign_key => "purchaser_id"
  has_many :purchased_shoes, :through => :purchases, :source => :shoe
  has_many :sales, :through => :listed_shoes
  has_many :customers, :through => :sales, :source => :purchaser

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(email, password)
    @user = User.find_by(email: email)
    return nil if @user.nil?
    if @user.password == password
      @user
    else
      nil
    end
  end  
end

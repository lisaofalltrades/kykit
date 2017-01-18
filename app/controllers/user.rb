class User < ActiveRecord::Base
  # has_many :questions, dependent: :destroy
  # has_many :answers, dependent: :destroy
  #user data is dependent on user account
  # has_many :comments
  # has_many :votes

  validates :email, uniqueness: true
  validates :name, :email, :hashed_password, presence: true

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

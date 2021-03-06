class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :conversations, :foreign_key => :sender_id

  # from the Rails console
  # user = User.find(some_number)
  # user.update_attribute(:admin, true)
  def admin?
    admin
  end
end

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable,
  :rememberable, :trackable, :validatable

  def admin?
    role == 'admin'
  end
end

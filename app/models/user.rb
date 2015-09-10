class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name, :login, :password, :email
  validates :name,      length: { minimum: 2 }
  validates :login,     length: { minimum: 2 }
  validates :password,  length: { minimum: 6 }
  validates :email,     uniqueness: true
end

class User < ApplicationRecord
  has_many :wikis
  before_save { self.email = email.downcase }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable
  
  validates :username, presence: true, uniqueness: { case_sensitive: false },   
  length: { minimum: 3, maximum: 25 }

  validates :email, uniqueness: { case_sensitive: false }
end

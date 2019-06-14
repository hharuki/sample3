class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: {in: 8..32 }
  validates :name, length: { maximum: 15}
  _email = /\A\S+@\S+\.\S+\z/
  
  _password = /\A[a-zA-Z0-9]+\z/

  has_secure_password
  
  
  has_many :topics
end
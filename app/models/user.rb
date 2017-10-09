class User < ApplicationRecord
  has_secure_password
  has_many :albums, dependent: :destroy
  has_many :blogs, dependent: :destroy
  
  
end

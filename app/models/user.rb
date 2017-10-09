class User < ApplicationRecord
  has_secure_password
  has_many :albums, dependent: :destroy
  
end

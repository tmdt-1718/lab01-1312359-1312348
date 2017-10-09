class Album < ApplicationRecord
  attr_accessor :images
  mount_uploaders :images, ImageUploader
  belongs_to :user
end

class Album < ApplicationRecord
  attribute :images, ArrayType.new
  mount_uploaders :images, ImageUploader
end

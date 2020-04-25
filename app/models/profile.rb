class Profile < ApplicationRecord
  belongs_to :user, optional: true

  
  mount_uploader :image, ImageUploader
end

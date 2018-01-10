class Category < ApplicationRecord
  mount_uploader :photo_category, PhotoUploader
end

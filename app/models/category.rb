class Category < ApplicationRecord
  mount_uploader :photo_category, PhotoUploader

  def self.for_map
    Category.all
  end

end

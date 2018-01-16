class Item < ApplicationRecord

  mount_uploader :photo, PhotoUploader
  mount_uploaders :photo_gallery, PhotoUploader

  # Relacionamentos
  has_many :item_tags, dependent: :destroy
  has_many :tags, :through => :item_tags

end

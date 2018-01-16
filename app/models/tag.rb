class Tag < ApplicationRecord

  mount_uploader :photo, PhotoUploader

  # Relacionamentos
  has_many :item_tags, dependent: :destroy
  has_many :tags, :through => :item_tags

end

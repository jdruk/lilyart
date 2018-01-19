class SubCategory < ApplicationRecord

  mount_uploader :photo_sub_category, PhotoUploader

  # Relacionamentos
  belongs_to :category

  # Validações
  validates :name, presence: true
end

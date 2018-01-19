class Category < ApplicationRecord

  # Relacionamentos
  has_many :sub_categories, dependent: :destroy

  mount_uploader :photo_category, PhotoUploader

  # maps de categorias para footer do site
  def self.for_map_site
    Category.all
  end

  # Validações
  validates :name, :description,  presence: true

end

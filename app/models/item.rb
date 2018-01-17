class Item < ApplicationRecord

  mount_uploader :photo, PhotoUploader
  mount_uploaders :photo_gallery, PhotoUploader

  # Relacionamentos
  has_many :item_tags, dependent: :destroy
  has_many :tags, :through => :item_tags

  # Opção de visibilidade do produto
  def self.visibility_status
    { "Não publicado" => 0, "Publicado" => 1 }
  end

  # Tipos declarados
  def self.types
    { "Sob encomenda" => 0, "Pronta entrega" => 1 }
  end
end

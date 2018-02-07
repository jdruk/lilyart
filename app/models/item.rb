class Item < ApplicationRecord

  # Adicionando método do carriewave para upload de imagens
  mount_uploader :photo, PhotoUploader
  mount_uploaders :photo_gallery, PhotoUploader

  # Relacionamentos
  has_many :item_tags, dependent: :destroy
  has_many :tags, :through => :item_tags
  has_many :item_sub_categories, dependent: :destroy
  has_many :sub_categories, :through => :item_sub_categories

  # Opção de visibilidade do produto
  def self.visibility_status
    { "Não publicado" => 0, "Publicado" => 1 }
  end

  # Tipos declarados
  def self.types
    { "Sob encomenda" => 0, "Pronta entrega" => 1 }
  end

  def price_without_promotion
    self.price * 1.25
  end

  # Validações
  validates :name, :weight, :widht, :height, :length, :status, :price, presence: true
  validates :weight, numericality: { only_integer: true }
  validates :widht, numericality: { only_integer: true }
  validates :height, numericality: { only_integer: true }
  validates :length, numericality: { only_integer: true }
  validates :abstract, length: { maximum: 120, too_long: "%{count} Máximo de caracteres permitidos" }

end

class ItemTag < ApplicationRecord

  # Relacionamentos
  belongs_to :item
  belongs_to :tag

  # Validações
  validates :item, :tag, presence: true
end

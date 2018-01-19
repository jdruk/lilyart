class ItemSubCategory < ApplicationRecord

  # Relacionamentos
  belongs_to :item
  belongs_to :sub_category

  # Validações
  validates :item, :sub_category, presence: true
end

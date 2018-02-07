class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Montador de upload para carregamento de imagem de perfil
  mount_uploader :photo, PhotoUploader

  # Validações do modelo
  validates :name, presence: true
end

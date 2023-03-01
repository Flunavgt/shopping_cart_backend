class Product < ApplicationRecord
  has_many :operations, dependent: :destroy

  validates :brand, :model, :photo, :power, :weight, :price, :description, presence: true
end

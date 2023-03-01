class User < ApplicationRecord
  has_many :operations

  validates :name, presence: true, uniqueness: true, length: { in: 6..20 }
end

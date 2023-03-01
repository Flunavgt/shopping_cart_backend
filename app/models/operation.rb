class Operation < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :start_date, :end_date, :location, :product_id, :user_id, presence: true
end

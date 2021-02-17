class Book < ApplicationRecord
  enum status: [:active, :inactive]
  belongs_to :author
  belongs_to :category
  has_many :reservations
end

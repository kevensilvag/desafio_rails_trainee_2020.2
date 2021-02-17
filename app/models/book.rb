class Book < ApplicationRecord
  enum status: [:active, :inactive]
  belongs_to :author
  belongs_to :category
  has_many :reservations

  before_create do
    self.status = "active"
  end
end

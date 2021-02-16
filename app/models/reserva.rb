class Reserva < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :user
end

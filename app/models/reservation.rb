class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :user

  after_save do
    if (book.stock - 1 == 0)
      book.stock -= 1
      book.status = "inactive"
    end
    book.save
  end

  after_update do
    if (book.stock == 0)
      book.status = "inactive"
    end
  end

end

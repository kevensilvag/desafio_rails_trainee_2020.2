class User < ApplicationRecord
    enum kind: [:admin, :librarian]
    has_many :reservas
end

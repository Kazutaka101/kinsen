class Member < ApplicationRecord
    has_secure_password

    has_many :reservations, dependent: :destroy
end

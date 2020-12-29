class Room < ApplicationRecord
    has_many :roomtypes, dependent: :destroy
    has_many :types, through: :roomtypes
end

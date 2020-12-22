class Room < ApplicationRecord
    has_many :roomtypes
    has_many :types, through: :roomtypes
end

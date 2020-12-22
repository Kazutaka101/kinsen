class Roomtype < ApplicationRecord
    belongs_to :type
    belongs_to :room
end

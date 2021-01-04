class Type < ApplicationRecord
    has_many :assignments
    has_many :plans, through: :assignments

    has_many :roomtypes
    has_many :rooms, through: :roomtypes


end

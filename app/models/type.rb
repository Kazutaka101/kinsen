class Type < ApplicationRecord
    has_many :assignments
    has_many :plans, through: :assingments

    has_many :roomtypes
    has_many :rooms, through: :roomtypes


end

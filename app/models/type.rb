class Type < ApplicationRecord
    has_many :assignments, dependent: :destroy
    has_many :plans, through: :assingments

    has_many :roomtypes, dependent: :destroy
    has_many :rooms, through: :roomtypes


end

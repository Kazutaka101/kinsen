class Plan < ApplicationRecord
    has_many :plan_types, dependent: :destroy
    has_many :types, through: :plan_types
    has_many :reservations
    belongs_to :dinner
    class << self
        def search(query)
            rel = order("id")
            if query.present?
                rel = rel.where("name LIKE ?", "%#{query}%")
            end
            rel
        end
    end
end

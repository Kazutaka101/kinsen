class Plan < ApplicationRecord
    has_many :assignments, dependent: :destroy
    has_many :types, through: :assignments
    
    has_many :reservations

    belongs_to :dinner

    
    class << self
        def search(*query)
        p "action ==========================="
        guest_num = query[0].to_f
        required_rooms = (guest_num / 4).ceil
            
        plan_start = query[1]
        2.upto(3) do |i|
            plan_start = plan_start + "-" 
            plan_start = plan_start + query[i]
        end

        plan_end = query[4]
        5.upto(6) do |i|
            plan_end = plan_end + "-"
            plan_end = plan_end + query[i]
        end

        p "plan_start = #{plan_start}"
        p "plan_end = #{plan_end}"    
        rel = where("plan_start <= ? AND plan_end >=  ? ", Date.parse(plan_start), Date.parse(plan_end))
        rel
        
     
            
        end
    end
end
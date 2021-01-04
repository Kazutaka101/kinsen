class Plan < ApplicationRecord
    has_many :assignments, dependent: :destroy
    has_many :types, through: :assignments
    
    has_many :reservations

    belongs_to :dinner

    
    class << self
        def search(*query)
            guest_num = query[0].to_f
            required_rooms = (guest_num / 4.to_f).ceil #この予約で必要な部屋数
            reserved_rooms = (Reservation.sum(:guest_count).to_f / 4).ceil  #予約されている部屋数
            vancant_rooms = Room.count - reserved_rooms # 部屋数　- 予約されている部屋数 = 空き部屋数
            if required_rooms <= vancant_rooms
            
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

                rel = where("plan_start <= ? AND plan_end >=  ? ", Date.parse(plan_start), Date.parse(plan_end))
                rel
            end
            
     
            
        end
    end
end
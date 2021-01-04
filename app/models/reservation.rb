class Reservation < ApplicationRecord
    belongs_to :member
    belongs_to :plan
    
    validates :plan_id, presence: true
    validates :member_id, presence: true
    validates :type_id, presence: true
    validates :guest_count, presence: true
    # validate :available_room?
    # validate :start_end_check
    # validate :available_plan?
    
    
        # def available_room?
        #     vacant_rooms = Room.count - (Reservation.sum(:guest_count).to_f / 4).ceil
        #     if vacant_rooms < (guest_count.to_f / 4).ceil
        #         errors.add(:available_room,"could not be found")
        #     end
        # end

        # def available_room?
        #     if Reservation.count != 0
        #         group_reservation = Reservation.group(:type_id).sum(:guest_count) #type別予約済み部屋数
        #         group_roomtype = Roomtype.group(:type_id).count #type別全部屋数
        #         if group_reservation[type_id] == nil
        #             group_reservation[type_id] = 0
        #         end
                

        #         vacant_rooms = group_roomtype[type_id].to_i - group_reservation[type_id].to_i
        #         p "group_roomtype = #{group_roomtype}"
        #         p "group_reservation = #{group_reservation[type_id]}"
        #         p "vacant_rooms = #{vacant_rooms}"
        #         p "guest_rooms = #{(guest_count.to_f/4).ceil}"
        #         if vacant_rooms <  (guest_count.to_f / 4).ceil
        #             errors.add(:available_room, "not be found")
                    
        #             p "available"
        #         end
        #     end
        # end

        # def available_plan?
        #     plan = Plan.find(plan_id)
        #     if plan.plan_start > date_start
        #         errors.add(:date_start, "is out of term")
        #         # p "datestart"
        #     end
        #     if plan.plan_end < date_end
        #         errors.add(:date_end, "is out of term")
        #         # p "dateend"
        #     end
        # end

        # def start_end_check
        #     if date_start > date_end
        #         errors.add(:dates, "must be set properly")
        #        # p "start end check"
        #     end
        # end

        
        
end

class Reservation < ApplicationRecord
    belongs_to :member
    belongs_to :plan
    validates :plan_id, presence: true
    validates :member_id, presence: true
    validates :type_id, presence: true
    validates :guest_count, presence: true
    validate :available_room?
    validate :start_end_check
    validate :available_plan?
    
    
        def available_room?
            vacant_rooms = Room.count - (Reservation.sum(:guest_count).to_f / 4).ceil
            if vacant_rooms < (guest_count.to_f / 4).ceil
                errors.add(:available_room,"could not be found")
            end
            #vacant_rooms = Room.count - (self.all.sum(:guest_count).to_f / 4).ceil
        end

        def available_plan?
            plan = Plan.find(plan_id)
            if plan.plan_start > date_start
                errors.add(:date_start, "is out of term")
            end
            if plan.plan_end < date_end
                errors.add(:date_end, "is out of term")
            end
        end

        def start_end_check
            if date_start > date_end
                errors.add(:dates, "must be set properly")
            end
        end
        
        
end

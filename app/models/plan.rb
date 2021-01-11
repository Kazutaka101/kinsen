class Plan < ApplicationRecord
    has_many :assignments, dependent: :destroy
    has_many :types, through: :assignments
    
    has_many :reservations

    belongs_to :dinner

    
    class << self
        def search(*query)
            guest_num = query[0].to_f
            required_rooms = (guest_num / 4.to_f).ceil #この予約で必要な部屋数
            date_start = query[1]
            2.upto(3) do |i|
                date_start = date_start + "-" 
                date_start = date_start + query[i]
            end

            date_end = query[4]
            5.upto(6) do |i|
                date_end = date_end + "-"
                date_end = date_end + query[i]
            end
            date_start = Date.parse(date_start)
            date_end = Date.parse(date_end)
            plans = Plan.where("plan_start <= ? and plan_end >= ?", date_start, date_end)
            
            #Plan.idな総部屋数
            room_count = Array.new(plans.count + 1,0)
            plans.each do |plan|
                Room.all.each do |room|
                    if plan.types.ids.sort == room.types.ids.sort
                        room_count[plan.id] = room_count[plan.id] + 1 
                    end
                end
            end
            plans.each do |plan|
                p plan.types.ids
            end
            p "------check_room_count---------------------"
            p room_count
            #---------------------------------------------------
            
            #reserved = Reservation.where("date_start <= ? AND ? >= date_end or date_start <= ? AND ? >= date_end", date_start, date_start, date_end, date_end  )
            reserved = Reservation.where("date_start BETWEEN ? AND ? or date_end BETWEEN ? AND ?", date_start, date_end, date_start, date_end)
            reserved.each do |reservation|
                p "----reserved.query.by ? <= date_start and date_end <= ? --------"
                p reservation
            end   
            
            reserved_room_count = 0
            # reserved.each do |reservation|
            #     reserved_room_count = (reservation.guest_count.to_f / 4.0).ceil
            #     room_count[reservation.plan_id] = room_count[reservation.plan_id] - reserved_room_count
            # end
            

            plans.each do |plan|
                reserved.each do |reservation|
                    pre_reservation_types = reservation.type_id.split(",")
                    reservation_types = []
                    for n in pre_reservation_types
                        reservation_types.push(n.to_i)
                    end
                    if plan.types.ids == reservation_types
                        p "Found Reserved Room Query By types"
                        p reservation_types
                        reserved_room_count = (reservation.guest_count.to_f / 4.0).ceil #type[1,2,3]は 1部屋利用されている。
                        room_count[plan.id] = room_count[plan.id] - reserved_room_count
                
                    end
                    p "--------reservation_types_pushed-----------"
                    p reservation_types
                end
            end

            p "---check_room_count_after_edit----------------------------"
            p room_count
            
            available_plan = Array.new(plans.count + 1, false)
            available_plan_id = Array.new(plans.count + 1, nil)
            1.upto(room_count.length - 1) do |idx|
                if room_count[idx] >= required_rooms
                    available_plan[idx] = true
                end 
                if available_plan[idx] == true
                    available_plan_id[idx] = idx 
                end
            end

            p "------check_available_plan--------------------------------"
            p available_plan
            p "------check_available_plan_id--------------------------------"
            available_plan_id.delete(nil)
            p available_plan_id
            plans =  Plan.find(available_plan_id)
            plans
        end
    end
end
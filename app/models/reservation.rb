class Reservation < ApplicationRecord
    belongs_to :member
    belongs_to :plan
    
    validates :plan_id, presence: true
    validates :member_id, presence: true
    validates :guest_count, presence: true
    validate :start_end_check
    validate :available_plan?
    validate :available_room?
    
    
        # プラン提供日範囲以外選択された場合蹴る
        def available_plan?
            plan = Plan.find(plan_id)
            if plan.plan_start > date_start
                errors.add(:date_start, "is out of term")
                # p "datestart"
            end
            if plan.plan_end < date_end
                errors.add(:date_end, "is out of term")
                # p "dateend"
            end
        end
        
        #予約開始日 > 予約終了日を蹴る
        def start_end_check
            if date_start > date_end
                errors.add(:dates, "must be set properly")
               # p "start end check"
            end
        end

        def available_room?
            #すべての部屋 = 
            type_id2 = type_id.to_s
            pre_types = type_id2.split(",") #"Example [2,3]
            types = []
            for n in pre_types
                types.push(n.to_i)
            end

            rooms = Room.all
            room_count = 0

            if types.length == 0
                rooms.each do |room|
                    if room.types.ids == types
                        room_count = room_count + 1
                    end
                end
            end
            
            if types.length == 1
                rooms.each do |room|
                    if room.types.ids == types
                        room_count = room_count + 1
                    end
                end

            elsif types.length == 2 
                #if types[2,3]
                # - "1&2 ,1&2&3 "
                rooms.each do |room|
                    if room.types.ids == types 
                        room_count = room_count + 1
                    end
                end
                
            elsif types.length == 3
                rooms.each do |room|
                    if room.types.ids == types 
                        room_count = room_count + 1
                    end
                end
                
            end
           
            occpaied_room = 0
            Reservation.where(type_id: type_id).each do |re|
                if date_start > re.date_start && date_end > re.date_end || re.date_start < date_start && re.date_end < date_end
                    occpaied_room = occpaied_room + 1
                end
                occpaied_room = occpaied_room + (re.guest_count / 4.to_f).ceil
            end
           
            
           
            vacant_room = room_count - occpaied_room
           
            required_room = (guest_count / 4 .to_f).ceil




            if vacant_room < required_room
                errors.add(:vacant_room, "could not be found")
            end
            p "--------------------"
            p "types = #{types}"
            p "--------------------"
            p "room_count = #{room_count}"
            p "--------------------"
            p "occpaid_room = #{occpaied_room}"
            p "--------------------"
            p "vacant_room = #{vacant_room}"
        

            
                
            
        end

        
        
end

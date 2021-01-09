class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :plan, null: false
      t.references :member, null: false
      t.integer :guest_count, null: false
      t.string :type_id 
      t.date :date_start, null: false
      t.date :date_end , null: false
      t.boolean :morning, null: false

     
    end
  end
end

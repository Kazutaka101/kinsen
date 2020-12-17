class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :plan_id, null: false
      t.integer :type_id, null: false
      t.integer :member_id, null: false
      t.integer :guest_count, null: false
      t.date :date_start, null: false
      t.date :date_end , null: false
      t.boolean :morning

      t.timestamps
    end
  end
end

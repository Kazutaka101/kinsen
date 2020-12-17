class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name , null: false
      t.integer :dinner_id, null: false
      t.date :plan_start, null: false
      t.date :plan_end, null: false
      t.integer :guest_max, null: false
      t.integer :guest_min, null: false


      t.timestamps
    end
  end
end

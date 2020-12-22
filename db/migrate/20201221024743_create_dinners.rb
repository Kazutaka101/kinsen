class CreateDinners < ActiveRecord::Migration[5.2]
  def change
    create_table :dinners do |t|
      t.string :name, null: false
      t.string :dish, null: false
      t.integer :cost, null: false
      t.float :kcal, null: false

      t.timestamps
    end
  end
end

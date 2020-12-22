class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
     t.references :plan, optional: true
     t.string :name, null: false
     t.references :roomtype, null: false
      

      t.timestamps
    end
  end
end

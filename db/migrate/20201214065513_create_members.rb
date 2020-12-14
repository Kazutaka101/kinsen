class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.integer :gender 
      t.integer :telephone, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.date :birthday, null: false

      t.timestamps
    end
  end
end

class CreateRoomtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :roomtypes do |t|
      t.references :type, null: false
      t.references :room, null: false

      t.timestamps
    end
  end
end

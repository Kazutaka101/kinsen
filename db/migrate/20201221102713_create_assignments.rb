class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :plan, null: false #外部キー
      t.references :type, null: false #外部キー
      
      t.timestamps
    end
  end
end

class CreateGearBoxes < ActiveRecord::Migration
  def change
    create_table :gear_boxes do |t|
      t.integer :gear_id
      t.integer :site_id
      t.integer :cost
      t.json :settings
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.text :description
      t.string :engine
      t.string :url

      t.timestamps null: false
    end
  end
end

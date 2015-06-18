class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.string :engine
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end

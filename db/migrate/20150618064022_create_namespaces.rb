class CreateNamespaces < ActiveRecord::Migration
  def change
    create_table :namespaces do |t|
      t.string :name
      t.integer :owner_id
      t.boolean :locked

      t.timestamps null: false
    end
  end
end

class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.text :description
      t.integer :category

      t.timestamps null: false
    end
  end
end

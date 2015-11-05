class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.integer :entityID
      t.string :name
      t.string :description
      t.string :entityCategoryID
      t.string :integer

      t.timestamps null: false
    end
  end
end

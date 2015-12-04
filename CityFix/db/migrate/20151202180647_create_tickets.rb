class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|

    	t.string :title, null: false
    	t.string :location
    	t.float :long
    	t.float :lat
    	t.text :description, null: false
    	t.string :picture, null: false
    	t.date :date ,null: false

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

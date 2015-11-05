class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :ticketID
      t.string :title
      t.integer :ticketCategoryID
      t.string :description
      t.integer :status
      t.string :location
      t.integer :userID

      t.timestamps null: false
    end
  end
end

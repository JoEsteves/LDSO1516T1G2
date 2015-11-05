class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userID
      t.string :username
      t.string :password
      t.string :name
      t.string :email
      t.integer :userTypeID

      t.timestamps null: false
    end
  end
end

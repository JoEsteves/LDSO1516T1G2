class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	
    	t.string :fname, null: false
    	t.string :lname, null: false
    	t.string :picture, default: "default.png"
    	t.string :email, null: false, uniqueness: true
    	t.string :password, null: false
    	t.boolean :banned, default: false
    	

      t.timestamps null: false
    end
  end
end

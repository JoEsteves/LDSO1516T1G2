class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :fname, :string
    add_column :users, :lname, :string


    User.reset_column_information

    User.all.each do |user|
    	user.fname = "ric"
    	user.lname = "cas"
    	user.save!

    end

    change_column :users, :fname, :string, :null => false
    change_column :users, :lname, :string, :null => false

  end

  def self.down
  	remove_column :users, :fname
  	remove_column :users, :lname

  end
end

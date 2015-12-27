class AddPictureToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :picture, :string, :default => "default.png", :null => false
  end
end

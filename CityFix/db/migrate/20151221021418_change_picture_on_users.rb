class ChangePictureOnUsers < ActiveRecord::Migration
  def change
  	change_column :users, :picture, :string, :default => nil , :null => true
  end
end

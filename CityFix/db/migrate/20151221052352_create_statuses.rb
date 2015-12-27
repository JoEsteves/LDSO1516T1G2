class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
    	
    	t.string :stype, null: false

      t.timestamps null: false
    end
  end
end

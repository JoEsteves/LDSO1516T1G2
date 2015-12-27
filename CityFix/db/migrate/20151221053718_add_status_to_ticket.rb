class AddStatusToTicket < ActiveRecord::Migration
  def change

  	add_column :tickets, :aproved, :boolean, null: false, default: false
    add_reference :tickets, :status, index: true, :default => 1
  end
end

class AddCounterCache < ActiveRecord::Migration
      def self.up
      add_column :tickets, :votes_count, :integer, :default => 0

      Ticket.reset_column_information
      Ticket.all.each do |p|
         Ticket.reset_counters(p.id, :votes)
      end
    end

    def self.down
      remove_column :tickets, :votes_count
end
end

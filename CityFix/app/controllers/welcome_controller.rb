class WelcomeController < ApplicationController

 	def index
                        @Ticket = Ticket.find_by_sql(["select tickets.* from tickets order by created_at asc"]).first


	 	if user_signed_in?
	 		redirect_to :controller => 'tickets', :action => 'recentes'

	 	end

	end
end

class WelcomeController < ApplicationController


            #landing page
 	def index
                        #example of a ticket with the most recent ticket submited
                        @Ticket = Ticket.find_by_sql(["select tickets.* from tickets order by created_at asc"]).first


	 	if user_signed_in?
	 		redirect_to :controller => 'tickets', :action => 'recentes'

	 	end

	end
end

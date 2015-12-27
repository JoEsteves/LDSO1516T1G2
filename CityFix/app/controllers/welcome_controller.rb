class WelcomeController < ApplicationController
 
 	def index

	 	if user_signed_in?
	 		redirect_to :controller => 'tickets', :action => 'recentes' 

	 	end

	end
end

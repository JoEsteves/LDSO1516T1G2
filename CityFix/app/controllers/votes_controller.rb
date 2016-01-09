class VotesController < ApplicationController
respond_to :js, :json, :html

#new vote
def new
    @vote = Vote.new
end

#creates a new vote - JSON
def createe
    puts "vote = "
    puts votes_ticket

    #puts votee
    @votee = Vote.find_by(user_id: current_user.id, ticket_id: votes_ticket[:ticket_id])

    if @votee.nil?
        @vote = Vote.new(user_id: current_user.id, ticket_id: votes_ticket[:ticket_id])
        respond_to do |format|
            if @vote.save
                #format.html { render :new }
                format.json { render json: {"answer" => 1} }
            else

                format.json { render json: {"answer" => 3} }
            end
         end
     else

            Vote.where(user_id: current_user.id, ticket_id: votes_ticket[:ticket_id]).delete_all
            respond_to do |format|

                #Post.where(person_id: 5).where(category: ['Something', 'Else']).delete_all
                #@votee.destroy
                format.json { render json: {"answer" => 2}}
            end
           #@vote = Vote.new(votes_params)
            #respond_to do |format|
              #if @vote.save
               # format.html { redirect_to @vote, notice: 'Ticket was successfully created.' }
                #format.json { render :show, status: :created, location: @vote }
              #else
               # format.html { render :new }
                #format.json { render json: @vote.errors, status: :unprocessable_entity }
              #end
            #end

    end
end


    def votes_params
      params.require(:vote).permit(:ticket_id, :user_id)
    end

    def votes_ticket
      params.require(:vote).permit(:ticket_id)
    end

    #def referral_params
      #json_params = ActionController::Parameters.new( JSON.parse(request.body.read) )
      #return json_params.require(:vote).permit(:user_id, :ticket_id)
    #end

end
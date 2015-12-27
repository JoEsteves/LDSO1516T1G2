class TicketsController < ApplicationController

	def index
		@tickets = Ticket.all
	    
	end

  def index2
    @tickets = Ticket.all
      
  end

  def testing
      
  end

	def show
		@ticket = Ticket.find(params[:id])
	end

  def list_all
    @tickets = Ticket.all

      respond_to do |format|
      format.json { render :json => @tickets }
    end
  end

  def submetidos
    @tickets = Ticket.where(user_id: current_user.id).order(created_at: :desc)

    
  end

  def validados
    @tickets = Ticket.all

  end

  def populares
    @tickets = Ticket.all
  end

  def recentes
    @tickets = Ticket.all.order(created_at: :desc)
  end

	def new
	    @ticket = Ticket.new
	  end

	def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:title, :location, :lat, :long, :description, :picture, :date, :user_id)
    end

end
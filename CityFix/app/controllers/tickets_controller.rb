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
    #@tickets = Ticket.all.where(user_id: current_user.id).order(created_at: :desc)
      @tickets = Ticket.find_by_sql(["select t.*, IFNULL(v.user_voted,0) as user_voted from
        (select * from tickets where tickets.user_id = ?) AS t  LEFT JOIN (select ticket_id, user_id as user_voted  from votes where user_id = ?)
        AS v on (t.id = v.ticket_id) order by created_at desc", current_user.id,current_user.id])
    #Post.find_by_sql "SELECT p.title, c.author FROM posts p, comments c WHERE p.id = c.post_id"


#select tickets.*, IFNULL(v.user_voted,0) from tickets LEFT JOIN (select ticket_id,count(user_id)
#as user_voted  from votes where user_id =1) AS v on (tickets.id = v.ticket_id);

    #@votes = select ticket_id, COUNT(user_id) from votes where user_id = 2 group by ticket_id;


  end

  def validados
    @tickets = Ticket.find_by_sql(["select tickets.*, IFNULL(v.user_voted,0) as user_voted from (select ticket_id, user_id as
      user_voted  from votes where user_id = ?) AS v LEFT JOIN tickets on (tickets.id = v.ticket_id) order by created_at desc",current_user.id])
  end

  def populares
    @tickets = Ticket.find_by_sql(["select tickets.*, IFNULL(v.user_voted,0) as user_voted from tickets LEFT JOIN (select ticket_id, user_id as
      user_voted  from votes where user_id = ?) AS v on (tickets.id = v.ticket_id) order by votes_count desc",current_user.id])
  end

  def recentes
    @tickets = Ticket.find_by_sql(["select tickets.*, IFNULL(v.user_voted,0) as user_voted from tickets LEFT JOIN (select ticket_id, user_id as
      user_voted  from votes where user_id = ?) AS v on (tickets.id = v.ticket_id) order by created_at asc",current_user.id])
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
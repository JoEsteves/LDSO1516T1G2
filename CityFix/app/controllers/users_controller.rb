class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]
	def index
		@users = User.all
	end

	# GET /users/1
	# GET /users/1.json
	def show

		@user = User.find(params[:id])
	
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(user_params)

    	respond_to do |format|
	      if @user.save
	        format.html { redirect_to @user, notice: 'User was successfully created.' }
	        format.json { render :show, status: :created, location: @user }
	      else
	        format.html { render :new }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
  		end
    end


	def profile
	    
	end

	def settings
		
	    
	end

	def info

	end

	def image
		
	end

	def password
		
	end


	def update_info
		@user = current_user
		if @user.update_attributes(user_update_info_params)
			#render
			flash[:notice] = "Updated."
			redirect_to action: "info"
		else
			#render
			flash[:alert] = "NOT Updated."
			redirect_to action: "info"
		end
	end

	def update_image
		@user = current_user
		if @user.update_attributes(user_update_image_params)
			#render
			flash[:notice] = "Updated."
			redirect_to action: "image"
		else
			#render
			flash[:alert] = "NOT Updated."
			redirect_to action: "image"
		end
	end

	def delete_image
		@user = current_user
		@user.remove_picture!
		if @user.save
			#render
			flash[:notice] = "Picture deleted."
			redirect_to action: "image"
		else
			#render
			flash[:alert] = "NOT Updated."
			redirect_to action: "image"
		end
	end

	def perfil
	    
	end


	def logout
		session[:id] = nil
		redirect_to '/welcome/index'
	end


	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:id, :fname, :lname, :password, :email)
    end


    def user_update_info_params
      params.require(:user).permit(:fname, :lname, :email)
    end

    def user_update_image_params
      params.require(:user).permit(:picture)
    end
	
end

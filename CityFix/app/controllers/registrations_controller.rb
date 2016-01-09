class RegistrationsController < Devise::RegistrationsController

  private

  #overrides default devise register controller
  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end

  #overrides default devise update controller
  def user_update_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :current_password)
  end

end
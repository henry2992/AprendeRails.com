class UsersController < ApplicationController
  def finish_signup
    if request.patch? && params[:user] # check for patch request entering email
      @user = User.find(params[:id])

      if @user.update(user_params)
        sign_in(@user, :bypass => true)
        redirect_to app_path, notice: "Hemos actualizado tu email."
      else
        @show_errors = true
      end
    end
  end

  private
    def user_params
      accessible = [ :name, :email, :location, :image, :uid, :provider] # change: extend needed params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible)
    end
end
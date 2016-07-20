
class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:notice] = "Merci pour votre inscription, nous vous tiendrons au courant très vite"
    else
      render "home/show"
    end

  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :telephone,
      :organisation
    )
  end
end

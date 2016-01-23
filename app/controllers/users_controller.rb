class UsersController < ApplicationController

  def sign_up
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      redirect_to cities_path
    else
      render :sign_up
    end
  end

  private

  def user_params
    params.require(:user).
      permit(:name, :phone, :birth_date, :username, :password)
  end

end
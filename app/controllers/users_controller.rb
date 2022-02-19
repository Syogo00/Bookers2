class UsersController < ApplicationController
  def show

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.update
    redirect_to user_path
  end

end

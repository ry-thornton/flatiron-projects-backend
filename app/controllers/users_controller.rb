class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def edit
  end

  def new
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :organization)
  end
end

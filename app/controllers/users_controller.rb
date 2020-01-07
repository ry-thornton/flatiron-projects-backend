class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user
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

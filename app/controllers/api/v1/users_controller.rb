class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.permit(:name, :username, :email, :password, :link)
  end
end

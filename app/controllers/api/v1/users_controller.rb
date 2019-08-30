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
    render :create
  end

  private

  def user_params
    params.permit(:id, :name, :username, :email, :password, :link)
  end
end

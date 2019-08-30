class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def show
    @post = User.find(params[:id])
    render :show
  end

  def create
    @user = User.find(post_params[:user_id])
    @post = Post.create(user_params)
    @user.posts << @post
    render :create
  end

  private

  def post_params
    params.permit(:id, :headline, :body, :author, :user_id)
  end
end

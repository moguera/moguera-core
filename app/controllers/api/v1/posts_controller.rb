class Api::V1::PostsController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  respond_to :json

  # GET /api/v1/posts
  def index
    @posts = Post.all
  end

  # GET /api/v1/posts/{postid}
  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end

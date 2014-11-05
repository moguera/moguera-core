class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end

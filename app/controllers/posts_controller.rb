class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def index
      @posts = Post.all
      render json: @posts
    end
  
    def show
      @post = Post.find(params[:id])
      render json: @post
    end
  
    def create
      @post = Post.new(post_params)
      @post.save
      render json: @post
    end
  
    def edit
    end
  
    def new
    end
  
    def update
    end
  
    def destroy
      @post = Post.find(params[:id])
      @post.delete
    end
  
    private
  
    def project_params
      params.require(:post).permit(:user_id, :project_id)
    end
  end
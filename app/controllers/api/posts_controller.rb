class Api::PostsController < ApplicationController
    before_action :set_user, except: [:all_posts]
    before_action :set_post, only: [:show, :destroy, :update]
    
    def all_posts
        render json: Post.all
    end
    
    def index
        render json: @user.posts
    end
    
    def show
        render json: @post
    end
    
    def create
        @post = @user.posts.new(post_params)
        if(@post.save)
            render json: @post
        else
            render json @post.errors.full_messages, status:422
        end
    end
    
    def update
        if(@post.update(post_params))
            render json: @post
        else
            render json: @post.errors.full_messages, status: 422
        end
    end
    
    def destroy
        render json: @post.destroy
    end
    
    private
    def set_user
        @user = User.find(params[:user_id])
    end
    def set_post
        @post = @user.posts.find(params[:id])
    end
    def post_params
        params.require(:post).permit(:title, :body, :user_id)
    end
    
end


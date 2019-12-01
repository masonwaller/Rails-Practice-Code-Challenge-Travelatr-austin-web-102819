class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(blogger_params)
        if @post.valid?
            @post.save
            redirect_to @post
        else 
            render new
        end
    end
    def show
        @post = Post.find(params[:id])
    end


private
    def blogger_params
        params.require(:blogger).permit(:title, :content, :author)
    end
end
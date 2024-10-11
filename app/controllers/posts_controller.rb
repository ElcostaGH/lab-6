class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    def index
    @posts = Post.all
    
    end

    def show
        id= params['id']
        @post=Post.find(id)
        
    end


end


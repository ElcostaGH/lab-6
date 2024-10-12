class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user!, only: [:edit, :update, :destroy]
  
    def index
      @posts = Post.all
    end
  
    def show
      @post = Post.find(params[:id])
      @comment = @post.comments.build
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new(post_params)
      @post.author = current_user.email
      @post.user = current_user
      if @post.save
        redirect_to posts_path, notice: 'Post created successfully'
      else
        puts "Errores: #{@post.errors.full_messages}"
        redirect_to new_post_path, alert: 'Error al crear el post'
      end
    end
  
    def edit
        @post = Post.find(params[:id])
      end
  
    def update
        @post = Post.find(params[:id])
      
        if @post.update(post_params)  # Usa post_params para permitir los parámetros permitidos
          redirect_to @post, notice: 'Post was successfully updated.'
        else
          render :edit  # Si hay errores, vuelve a renderizar la vista de edición
        end
      end
  
    def destroy
        @post = Post.find(params[:id])
        if @post.user == current_user  # Verifica que el usuario sea el propietario
          @post.destroy
          redirect_to posts_path, notice: 'Post was successfully deleted.'
        else
          redirect_to posts_path, alert: 'Not authorized to delete this post.'
        end
      end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def authorize_user!
      redirect_to posts_path, alert: 'Not authorized' unless @post.user == current_user
    end
  
    def post_params
      params.require(:post).permit(:title, :content, :user_id)  # Ajusta según los parámetros de tu modelo
    end

    def authorize_user!
        redirect_to posts_path, alert: 'Not authorized' unless @post.user == current_user
      end
      

  end
  
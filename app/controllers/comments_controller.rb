class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_comment, only: [:edit, :update, :destroy]
    before_action :authorize_user!, only: [:edit, :update, :destroy]
  
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.build(comment_params)
      if @comment.save
        redirect_to post_path(@post), notice: 'Comment created successfully'
      else
        @comment.errors.full_messages.each do |msg|
          Rails.logger.error "Error creating comment: #{msg}"
        end
        redirect_to post_path(@post), alert: 'Error creating comment'
      end
    end
  
    def edit
      @comment = Comment.find(params[:id])
    end
  
    def update
      if @comment.update(comment_params)
        redirect_to @comment.post, notice: 'Comment was successfully updated.'
      else
        render :edit  # Renderiza el formulario si hay errores
      end
    end
  
    def destroy
      @comment.destroy
      redirect_to @comment.post, notice: 'Comment was successfully deleted.'
    end
  
    private
  
    def set_comment
      @comment = Comment.find(params[:id])
    end
  
    def authorize_user!
      redirect_to post_path(@comment.post), alert: 'Not authorized' unless @comment.user == current_user
    end
  
    def comment_params
      params.require(:comment).permit(:content, :author, :user_id)  # Ajusta según los parámetros de tu modelo
    end
  end
  
class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user


    if @comment.save
      flash[:success] = 'Comment was successfully created.'
    else
      flash[:danger] = 'Comment was not created.'
    end
    
    respond_to do |format| 
      format.js
      format.html { redirect_to @comment.hotel }
    end
  end

  def destroy
    @comment_copy = @comment
    if @comment.destroy
      flash[:success] = 'The comment was successfully deleted.'
    else
      flash[:danger] = 'Comment was not deleted.'
    end
    
    respond_to do |format| 
      format.js
      format.html { redirect_to @comment_copy.hotel }
    end

  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:hotel_id,:description)
    end
end

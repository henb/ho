class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user

    @flash = {}
    if @comment.save
      @flash[:success] = 'Comment was successfully created.'
    else
      @flash[:danger] = 'Comment was not created.'
    end
    
    respond_to { |format| format.js }
  end

  def destroy
    @comment_copy = @comment
    @comment.destroy
    @flash = {}
    @flash[:success] = 'The comment was successfully deleted.'
    respond_to { |format| format.js }
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:hotel_id,:description)
    end
end

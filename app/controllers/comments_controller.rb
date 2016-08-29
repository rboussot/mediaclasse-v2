class CommentsController < ApplicationController
  def create
    @comment = Comment.new(user: current_user, content: params[:commit])
    if @comment.save
      redirect_to :back
      authorize @comment
    else
      render :new
      authorize @comment
    end
  end
end

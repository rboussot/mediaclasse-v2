class CommentsController < ApplicationController
  def create
    @comment = Comment.new(user: current_user, content: params[:commit])
    authorize @comment

    if @comment.save
      redirect_to :back
    else
      render :new
    end
  end
end

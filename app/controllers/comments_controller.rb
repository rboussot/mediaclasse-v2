class CommentsController < ApplicationController
  def create
    @comment = Comment.new(user: current_user, content: params[:commit])
    if @comment.save
      redirect_to :back
    else
      render :new
    end
  end
end

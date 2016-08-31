class CommentsController < ApplicationController

  def create
    @comment = Comment.new(user: current_user, content: params[:comment][:content], lecture_id: params[:lecture_id])
    authorize @comment

    if @comment.save
      redirect_to :back
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    authorize @comment
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :lecture_id)
  end
end

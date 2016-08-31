class CommentsController < ApplicationController

  def create
    comment = Comment.new(user: current_user, content: params[:comment][:content], lecture_id: params[:lecture_id])
    authorize comment
    render :new unless comment.save # Il renvoie automatiquement au comment/create.js.erb

    @lecture = Lecture.find(params[:lecture_id])
    @lecture_comments = Comment.all.where(lecture: @lecture).joins(:user).order('updated_at DESC')
    @comment = Comment.new
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    authorize @comment
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :lecture_id)
  end
end

class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]

  def create
    comment = Comment.new(user: current_user, content: params[:comment][:content], lecture_id: params[:lecture_id])
    authorize comment
    render :new unless comment.save # Il renvoie automatiquement au comment/create.js.erb

    @lecture = Lecture.find(params[:lecture_id])
    @lecture_comments = Comment.all.where(lecture: @lecture).joins(:user).order('updated_at DESC')
    @comment = Comment.new
  end

  def edit
    # CF before_action
  end

  def update
    # CF before_action
    @comment.update(comment_params)
  end

  def destroy
    # CF before_action
    authorize @comment
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :lecture_id, :super)
  end

  def find_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end
end

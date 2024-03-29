class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_comment, only: [:edit, :update, :destroy]
  before_action :find_comments, only: [:create, :index]

  def create
    @comment = Comment.new(user: current_user, content: comment_params[:content])
    # @comment = Comment.new if @comment.save
    authorize @comment
    if @comment.save
      respond_to do |format|
        format.html { redirect_to comments_path }
        format.js { } # Il renvoie automatiquement à "create.js.erb"
      end
    else
      respond_to do |format|
        format.html { render 'index'}
        format.js { } # Il renvoie automatiquement à "create.js.erb"
      end
    end
  end

  def edit
    # CF before_action
  end

  def index
    @comment = Comment.new
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
    params.require(:comment).permit([:content])
  end

  def find_comment
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def find_comments
    @comments = policy_scope(Comment).where(visible: true).includes(user: :picture_files).order('created_at DESC').first(100)
  end
end

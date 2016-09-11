class ChannelsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_after_action :verify_policy_scoped, only: :index

  def index
    @category = Category.find_by_name(params[:category])
    @channels = Channel
      .joins(:category)
      .where(visible: true)
      .where(categories: {id: @category.id})
      .order('name ASC')
    @categories = Category.where(tag: "chaines")
  end

  def new
    @channel = Channel.new
    authorize @channel
  end

  def create
    @channel = Channel.new(channel_params)
    authorize @channel
    if @channel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @channel = Channel.where(user_id: current_user[:id]).first
    authorize @channel
  end

  def update
    @channel = Channel.find(user_id: current_user[:id]).first
    authorize @channel
    @channel.update(channel_params)
    redirect_to root_path
  end

  private

  def channel_params
    params.require(:channel).permit(:picture, :name, :description, :email, :link)
  end

end

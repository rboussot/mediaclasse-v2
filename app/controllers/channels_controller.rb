class ChannelsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @channels = Channel.joins(:category).where(categories: {id: params[:format]}).order('name ASC')
    @categories = Category.where(tag: "chaines")
    @channels = policy_scope(Channel)
    skip_authorization
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(channel_params)
    if @channel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @channel = Channel.where(user_id: current_user[:id]).first
  end

  def update
    @channel = Channel.find(user_id: current_user[:id]).first
    @channel.update(channel_params)
    redirect_to root_path
  end

  private

  def channel_params
    params.require(:channel).permit(:picture, :name, :description, :email, :link)
  end

end
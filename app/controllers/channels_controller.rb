class ChannelsController < ApplicationController

  def index
    @channels = Channel.joins(:category).where(categories: {id: params[:format]}).order('name ASC')
    @categories = Category.where(tag: "chaines")
  end
end

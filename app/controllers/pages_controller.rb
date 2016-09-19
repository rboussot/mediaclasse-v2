class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    @super_comments = Comment.where(super: true).last(5)
    @edito= Category.where(tag: "edito").first
    @pres= Category.where(tag: "pres").first
    @favorite= Category.where(tag: "favorite").first
    @litterature = Category.where(tag: "litterature").first
    @methodo =  Category.where(name: "Méthodologie").first
    @channels = Category.where(tag: "chaines").first
    @channel = Channel.where(user_id: current_user[:id]).first
    @technique_category = Category.where(tag: "technique").last.name
  end

  def googlevalidation
  end

  def newsletter
  end
end

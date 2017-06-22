class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized
  before_action :find_super_comments, only: [:home]

  def home
    @edito= Category.where(tag: "edito").first
    @pres= Category.where(tag: "pres").first
    @favorite= Category.where(tag: "favorite").first
    @litterature = Category.where(tag: "litterature").first
    @methodo =  Category.where(name: "Méthodologie").first
    @channels = Category.where(tag: "chaines").first
    if current_user
      @channel = Channel.where(user_id: current_user[:id]).first
    end
    @technique_category = Category.where(tag: "technique").last.name
  end

  def googlevalidation
  end

  def newsletter
  end

  private

  def find_super_comments
    @super_comments = policy_scope(Comment).includes(user: :picture_files).order('created_at DESC').where(super: true).last(5)
  end

end

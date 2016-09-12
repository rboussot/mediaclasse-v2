class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    @super_comments = Comment.where(super: true).last(5)
  end

  def google_validation
  end

  def newsletter
  end
end

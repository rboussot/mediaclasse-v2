class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    skip_authorization
  end

  def newsletter
    skip_authorization
  end
end

class DocumentsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def show
    @document = Document.find(params[:id])
  end
end

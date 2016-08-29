class DocumentsController < ApplicationController

  def show
    @document = Document.find(params[:id])
    authorize @document
  end
end

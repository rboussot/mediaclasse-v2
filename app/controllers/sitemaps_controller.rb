class SitemapsController < ApplicationController
  skip_before_action :authenticate_user!, raise: false
  skip_authorization if respond_to?(:skip_authorization) # Exempte Pundit si présent

  def index
    # On prend uniquement les leçons visibles pour ne pas envoyer Google sur des pages masquées
    @lectures = Lecture.where(visible: true)

    respond_to do |format|
      format.xml
    end
  end
end
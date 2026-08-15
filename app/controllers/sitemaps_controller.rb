class SitemapsController < ApplicationController
  skip_before_action :authenticate_user!, raise: false
  skip_authorization if respond_to?(:skip_authorization)

  def index
    # En passant par policy_scope, Pundit est satisfait
    @lectures = policy_scope(Lecture).where(visible: true)

    respond_to do |format|
      format.xml
    end
  end
end
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :store_user_location!, if: :storable_location?
  after_action :deleted_user

  def deleted_user
    if user_signed_in? && current_user.deleted
      sign_out current_user
      flash[:alert] = "Désolé, ce compte a été supprimé par l'utilisateur !"
    end
  end

  include Pundit::Authorization

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Oups, vous n'avez pas cette autorisation !"
    redirect_to(root_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /^rails_admin/
  end

  def set_noindex
    @noindex = true
  end

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    # Mémorise l'URL actuelle dans la session Devise
    store_location_for(:user, request.fullpath)
  end

  def after_sign_in_path_for(resource_or_scope)
    # Redirige vers l'URL sauvegardée ou, par défaut, vers la page d'accueil/dashboard
    stored_location_for(resource_or_scope) || super
  end

end

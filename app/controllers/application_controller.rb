class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  after_action :deleted_user
  # ========== Forcer le www dans rails admin ==========
  before_filter :force_www!
  # => cf protected

  def deleted_user
    if user_signed_in? && current_user.deleted
      sign_out current_user
      flash[:alert] = "Désolé, ce compte a été supprimé par l'utilisateur !"
    end
  end

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Oups, vous n'avez pas cette autorisation !"
    redirect_to(root_path)
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /^rails_admin/
  end

  protected

  def force_www!
    if Rails.env.production? and request.host[0..3] != "www."
      redirect_to "#{request.protocol}www.#{request.host_with_port}#{request.fullpath}", :status => 301
    end
  end
end

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
    @last_lecture = Lecture.last
    @banner = Category.where(tag: "ban").first
  end

  def googlevalidation
  end

  def newsletter
  end

  def test
  end

  def invoices
    # Accéder à l'API de Stripe
    if current_user.stripe_customer_id.present?
      require "stripe"
      Stripe.api_key = ENV['STRIPE_SECRET_KEY']
      # On récupère le user avec son id Stripe
      @stripe_customer_id = current_user[:stripe_customer_id]
      # Récupérer les Factures depuis l'API de Stripe
      @invoices = Stripe::Invoice.list(limit: 100, customer: @stripe_customer_id)
    end
  end

  def expired
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # ==== BDD ====
    # Récupérer tous les utilisateurs qui ont un abonnement en cours
    @customers = User.where.not(plan: [nil, ""]).where(collective: false)
    @collective = User.where(collective: true)
    # Estimer le montant net
    @total = 0.0
    @customers.each do |customer|
      @total += customer.pricing
    end
    # Récupérer tous les utilisateurs dont l'abonnement est en cours mais dont la date d'expiration est dépassée
    @expired_plans = User.where.not(plan: [nil, ""]).where("expire <= ?", Date.today-4).order('expire DESC')
    # ==== STRIPE ====
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Récupérer tous les utilisateurs qui ont un défaut de paiement
    @invoices_pastdue = Stripe::Invoice.list(past_due: true, closed: false, limit: 100).reverse_each
    # === END STRIPE ===
  end

  def unsubscribe
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Définir l'utilisateur concerné par le désabonnement
    @user_to_unsubscribe = User.where(id: params[:id]).first
    # Supprimer le customer sur Stripe
    if @user_to_unsubscribe.stripe_customer_id.present?
      begin
        customer = Stripe::Customer.retrieve(@user_to_unsubscribe.stripe_customer_id)
        customer.delete
      rescue Stripe::InvalidRequestError => e
        flash[:notice] = "Le client n'a pas été trouvé sur Stripe."
      end
    end
    # Désabonner l'utilisateur dans la base de données
    @user_to_unsubscribe.plan = nil
    @user_to_unsubscribe.stripe_customer_id = nil
    @user_to_unsubscribe.pricing = nil
    @user_to_unsubscribe.collective = false
    @user_to_unsubscribe.expire = Date.today
    @user = @user_to_unsubscribe
    @user.save
    # Envoyer un email à l'utilisateur
    PageMailer.invoices_pastdue(@user_to_unsubscribe).deliver_now
    # Rediriger sur la page de routine
    redirect_to expired_path
  end

  private

  def find_super_comments
    @super_comments = policy_scope(Comment).includes(user: :picture_files).where(super: true).order(created_at: :desc).first(30)
  end

end

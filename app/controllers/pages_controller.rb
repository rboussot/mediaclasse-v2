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

  def invoices
    # Accéder à l'API de Stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    # Si c'est un ancien ID qui commence en S, on récupère le bon à partir de l'API de Stripe
    if current_user[:stripe_customer_id][0] == "s"
      @stripe_subscription_data = Stripe::Subscription.retrieve(current_user[:stripe_customer_id])
      @stripe_customer_id = @stripe_subscription_data["customer"]
    # Si c'est un ancien ID qui commence en CUS
    else
      @stripe_customer_id = current_user[:stripe_customer_id]
    end
    # Récupérer les Factures depuis l'API de Stripe
      @invoices = Stripe::Invoice.list(limit: 100, customer: @stripe_customer_id)
  end

  def getsub
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Récupérer tous les utilisateurs qui ont un abonnement en cours
    @users_with_subscription = User.where.not(stripe_customer_id: [nil, ""]).order('email ASC')
  end

  def replacesub
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Récupérer les infos de l'abonnement
    @stripe_subscription_data = Stripe::Subscription.retrieve(params[:format])
    # Retrouver l'utilisateur qui possède cet abonnement
    @user = User.where(stripe_customer_id: params[:format]).first
    # Retrouver le véritable ID de cet utilisateur
    @stripe_real_customer_id = @stripe_subscription_data["customer"]
    # Enregistrer cet ID à la place de l'autre
    @user.stripe_customer_id = @stripe_real_customer_id
    @user.save
  end

  def test
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    # Récupérer les informations de l'utilisateur actuel
    @customer_infos = Stripe::Customer.retrieve(current_user.stripe_customer_id)
  end

  private

  def find_super_comments
    @super_comments = policy_scope(Comment).includes(user: :picture_files).where(super: true).order(created_at: :desc).first(10)
  end

end

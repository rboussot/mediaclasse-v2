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

  def test
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

  def customers_list
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Récupérer tous les utilisateurs qui ont un abonnement en cours
    @customers = User.where.not(stripe_customer_id: [nil, ""]).order('current_sign_in_at DESC')
    @total = 0.0
    @customers.each do |customer|
      @total += customer.pricing
    end
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

  def customer_infos
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Récupérer les informations de l'utilisateur sélectionné
    @customer_infos = Stripe::Customer.retrieve(params[:format])
    # Si l'abonnement est en cours, récupérer les informations
    unless @customer_infos["deleted"] || @customer_infos["subscriptions"]["data"].blank?
      @subscription_id = @customer_infos["subscriptions"]["data"].find({["canceled_at"] => "null"}).first["id"]
      @subscription_infos = Stripe::Subscription.retrieve(@subscription_id)
    end
  end

  def invoices_pastdue
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Récupérer tous les utilisateurs qui ont un défaut de paiement
    @invoices = Stripe::Invoice.list(past_due: true, closed: false, limit: 100)
  end

  def invoice_infos
    # Page réservée aux Administrateurs du site
    unless current_user && current_user.admin
      redirect_to root_path
    end
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Récupérer les informations de la facture
    @invoice = Stripe::Invoice.retrieve(params[:invoice])
    # Récupérer l'utilisateur dans ma base de données
    @user = User.where(stripe_customer_id: @invoice["customer"]).first
    # Si l'utilisateur existe en base de données, récupérer le client stripe
    unless @user.nil?
      @customer = Stripe::Customer.retrieve(@user.stripe_customer_id)
    end
  end

  def unsubscribe
    # Accéder à l'API de stripe
    require "stripe"
    Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
    # Définir l'utilisateur concerné par le désabonnement
    @user_to_unsubscribe = User.where(id: params[:user_to_unsubscribe]).first
    # Supprimer le customer sur Stripe
    customer = Stripe::Customer.retrieve(@user_to_unsubscribe.stripe_customer_id)
    customer.delete
    # Désabonner l'utilisateur dans la base de données
    @user_to_unsubscribe.paydate = nil
    @user_to_unsubscribe.plan = nil
    @user_to_unsubscribe.stripe_customer_id = nil
    @user = @user_to_unsubscribe
    @user.save
    # Envoyer un email à l'utilisateur
    PageMailer.invoices_pastdue(@user_to_unsubscribe).deliver_now
    # Rediriger sur la page des factures impayées
    redirect_to invoices_pastdue_path
  end

  def pricing
    @customers = User.where.not(stripe_customer_id: [nil, ""])
    @customers.each do |customer|
      case customer.plan
        when "deux"
          customer.pricing = 2.0
        when "quatre"
          customer.pricing = 4.0
        when "cinq"
          customer.pricing = 5.0
        when "huit"
          customer.pricing = 8.0
        when "dix"
          customer.pricing = 10.0
        when "quinze"
          customer.pricing = 15.0
        when "seize"
          customer.pricing = 16.0
        when "vingt"
          customer.pricing = 20.0
        when "vingt-cinq"
          customer.pricing = 25.0
        when "trente"
          customer.pricing = 30.0
        when "trente-deux"
          customer.pricing = 32.0
      end
    customer.save
    end
    redirect_to customers_list_path
  end

  private

  def find_super_comments
    @super_comments = policy_scope(Comment).includes(user: :picture_files).where(super: true).order(created_at: :desc).first(10)
  end

end

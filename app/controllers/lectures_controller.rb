class LecturesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    # On vérifie si l'utilisateur a un plan et la date d'expiration
    if current_user && current_user.plan.present? && current_user.expire.present? && current_user.expire < Date.today
      if current_user.stripe_customer_id.present?
        # Si le plan est associé à un paiement par Stripe, on désinscrit l'utilisateur.
        # Accéder à l'API de stripe
        require "stripe"
        Stripe.api_key = ENV['STRIPE_SECRET_LIVE_KEY']
        # Définir l'utilisateur concerné par le désabonnement
        @user_to_unsubscribe = current_user
        # Supprimer le customer sur Stripe
        customer = Stripe::Customer.retrieve(@user_to_unsubscribe.stripe_customer_id)
        customer.delete
        # Désabonner l'utilisateur dans la base de données
        @user_to_unsubscribe.paydate = nil
        @user_to_unsubscribe.plan = nil
        @user_to_unsubscribe.stripe_customer_id = nil
        @user_to_unsubscribe.pricing = nil
        @user_to_unsubscribe.expire = Date.today
        @user = @user_to_unsubscribe
        @user.save
        flash[:notice] = "Votre abonnement est fermé depuis le #{current_user.expire.strftime '%d/%m/%Y'}"
      else
        # Si le plan dépend d'un paiement par virement, on ferme l'abonnement en base de données.
        current_user.plan = nil
        current_user.pricing = nil
        current_user.collective = false
        current_user.save
        flash[:notice] = "Votre abonnement est fermé depuis le #{current_user.expire.strftime '%d/%m/%Y'}"
        redirect_to lecture_path
      end
    end
    @lecture = Lecture.find(params[:id])
    @lecture_course = @lecture.course
    @lectures = @lecture_course.lectures.order('updated_at ASC').where(visible: true)
    @documents = Document.where(lecture_id: params[:id])
    skip_authorization
  end

end

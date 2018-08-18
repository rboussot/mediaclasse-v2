class PageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.page_mailer.invoices_pastdue.subject
  #
  def invoices_pastdue(user)
    @user = user

    mail(to: @user.email, subject: "Votre participation sur Mediaclasse.fr")
    mail(to: "mediaclasse.fr@gmail.com", subject: "#{@user.email} désabonné(e) avec succès")
  end
end

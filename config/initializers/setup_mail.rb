ActionMailer::Base.smtp_settings = {
  :address              => 'smtp.gmail.com',
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'mediaclasse.fr@gmail.com',
  :password             => 'pass',
  :authentication       => :plain,
  :enable_starttls_auto => true,
  :openssl_verify_mode  => 'none'
}

ActionMailer::Base.default_url_options[:host] = "http://www.mediaclasse.fr"

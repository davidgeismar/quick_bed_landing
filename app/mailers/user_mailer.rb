class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_subscription.subject
  #
  def new_subscription(user)
    @user = user  # Instance variable => available in view

    mail(to: "pe.levy@quickbed.org", subject: 'New subscription on landing')
    # This will render a view in `app/views/user_mailer`!
  end
end

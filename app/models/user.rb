class User < ActiveRecord::Base
  after_create :send_email_to_admin

  extend Enumerize

  enumerize :organisation_type, in: [:hotel, :association]

  validates :organisation_type, presence: {message: 'Veuillez choisir un type d\'organisation'}
  validates :first_name,  presence: { message: 'Veuillez remplir votre prénom' }
  validates :last_name,   presence: { message: 'Veuillez remplir votre nom' }
  validates :email,presence: true,  format: {
    with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: 'Veuillez renseigner un email valide'
  }
private

 def send_email_to_admin
    UserMailer.new_subscription(self).deliver_now
  end
end

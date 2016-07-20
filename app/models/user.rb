class User < ActiveRecord::Base

  validates :first_name,  presence: { message: 'Veuillez remplir votre prénom' }
  validates :last_name,   presence: { message: 'Veuillez remplir votre nom' }
  validates :email, format: {
    with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: 'Veuillez renseigner un email valide'
  }

end

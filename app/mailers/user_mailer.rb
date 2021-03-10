class UserMailer < ApplicationMailer

  default from: 'no-reply@kitten-eshop.fr'
 
  # def welcome_email(user)
  #   #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
  #   @user = user 

  #   #on définit une variable @url qu'on utilisera dans la view d’e-mail
  #   @url  = 'http://localhost:3000/users/sign_in' 

  #   # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
  #   mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  # end


  def mailjet_email(product)
    @product = product
    mail(from: "me@mailjet.com", to: "giraud.nicolas@me.com",
         subject: "This is a nice welcome email")
  end

end

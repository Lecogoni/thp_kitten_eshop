# README

# heroku app

https://kitten-eshop.herokuapp.com

This README would normally document whatever steps are necessary to get the
application up and running.

# Use Kitten-Shop

To sign_up (register) should enter : username, email, password, password_confirmation
To log_in user - in login field - can enter either its username OR email 


--------------------------------

Bootswatch --> Finalement pas utilisé  
https://bootswatch.com/journal/

--------------------------------

Utilisation d'un thème existant 
https://startbootstrap.com/previews/modern-business

--------------------------------

Pour insérer du CSS (général): 
--> Aller dans app/assets/main.css
(Si vous voulez mettre du css pour un éléménnt précis (navbar/footer/header/form etc..)me demander car il faut créer un autre fichier spécifique et le lier dans le manifeste application.css)

--------------------------------

* Ruby version

ruby '2.7.2'
gem 'rails', '~> 6.1.3'

* System dependencies

gem "table_print"
gem 'faker'
gem 'dotenv-rails'
gem 'devise'
gem 'stripe'
gem "letter_opener"
gem 'mailjet'

* Configuration

works with Postgres

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

  
----------- compte existant pour test en heroku --------------------------------

nico@nico.fr
123456

--------------------------------

alex
alex@alex.fr  
123456

# nico comment 

=> changer le message d'alert de delete Cart en qqch plus genre command valider 
=> le total price dans card n'est pas décimal, ni exact
=> column user_id dans cart est inutile
=> manque la column photo a la db:product
=> attention a ne pas afficher n'importe ou les fonctions create / edit / destroy des Product
=> ajout un regex pour validation du format User > username

https://dev.mailjet.com/email/guides/getting-started/#send-your-first-email
https://dev.mailjet.com/email/reference/overview/errors/

# edouard comment 


# alex comment
on va y arriver!


rails db:{drop,migrate,seed}&&rails s

rake db:drop
rails db:create
rails db:migrate

# info CB pour test Stripe
https://stripe.com/docs/checkout/integration-builder
https://stripe.com/docs/testing

Payment succeeds
4242 4242 4242 4242

Payment requires authentication
4000 0025 0000 3155

Payment is declined
4000 0000 0000 9995
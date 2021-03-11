# README

Bienvenue sur le kitten-eshop de Alex, Edouard et Nicolas. 

Pour connecter 
- soit consulter en http://localhost:3000/ dans votre navigateur après avoir executer les command suivant
- ou bien se rendre directement à l'URL ci dessous :

# kitten-eshop online avec heroku

https://kitten-eshop.herokuapp.com

# Use Kitten-Shop

To sign_up (register) should enter : username, email, password and password_confirmation
To log_in user - in login field - can enter either its username OR email AND password

Connect with a preregister user :

username : bobo_0
password : 123456

# connect as admin user

username : admin
password : 123456

--------------------------------

# app info 

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

- access local app => run : rails db:{drop,migrate,seed}&&rails s

- payment

# info CB pour test Stripe
https://stripe.com/docs/checkout/integration-builder
https://stripe.com/docs/testing

Payment succeeds
4242 4242 4242 4242

Payment requires authentication
4000 0025 0000 3155

Payment is declined
4000 0000 0000 9995

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



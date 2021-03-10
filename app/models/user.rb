class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  attr_accessor :login

  has_many :orders

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  #format: {with: /\A[a-zA-Z0-9 _\.]*z/}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :welcome_send
  #after_create :welcome_send_v2

  
  # envoi un email post create user via lk'action mailer affichage local gem letter_opener
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  # def welcome_send_v2
  #   Mailjet::Send.create(messages: [{
  #     'From'=> {
  #       'Email'=> 'giraud.nicolas@me.com',
  #       'Name'=> 'kitten team'
  #     },
  #     'To'=> [
  #       {
  #         'Email'=> 'giraud.nicolas@me.com',
  #         'Name'=> 'Nicolas'
  #       }
  #     ],
  #     'Subject'=> 'welcome',
  #     'TextPart'=> 'Mailjet email',
  #     'HTMLPart'=> '<h3>Dear passenger 1, welcome to <a href=\'https://www.mailjet.com/\'>Mailjet</a>!</h3><br />May the delivery force be with you!',
  #   }]
  #   )
  # end
  



  # permet d'ajouter username dans les conditions de log in
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup 
    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(username) = :value OR lower(email) = :value", value: login.downcase).first
    else
      where(conditions.to_hash).first
    end
  end
  

end

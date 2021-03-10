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
  
  # envoi un email post create user via lk'action mailer affichage local gem letter_opener
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

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

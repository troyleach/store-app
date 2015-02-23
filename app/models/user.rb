class User < ActiveRecord::Base
  has_many    :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :login

  # validates :password, presence: true, length: { minimum: 6 } if new?
  # validates :password_confirmation, presence: true if new?

         


 def self.find_first_by_auth_conditions(warden_conditions)
   conditions = warden_conditions.dup
   if login = conditions.delete(:login)
     where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
   else
     if conditions[:username].nil?
       where(conditions).first
     else
       where(username: conditions[:username]).first
     end
   end
 end

 validates :username,
   :presence => true,
   :uniqueness => {
     :case_sensitive => false
   }
   
end

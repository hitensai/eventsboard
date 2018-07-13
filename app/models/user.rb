class User < ApplicationRecord
	has_many :organizeed_events, class_name: "Event", dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    def to_s
     "#{username}"
    
    end	

    def full_name

    "#{first_name} #{last_name}"
    end	
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototypes

  with_options presence: true do
    validates :shop_name
    validates :person_name
    validates :address
    validates :phone_number
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :swimming_pools, dependent: :destroy

  # as owner , list all my bookings related to my swimmingpools
  has_many :bookings_as_owner, through: :swimming_pools, source: :bookings, class_name: 'Booking'

  # as renter , list all my bookings related to my rents
  has_many :bookings_as_renter, dependent: :destroy, class_name: 'Booking'

  has_one_attached :photo

end

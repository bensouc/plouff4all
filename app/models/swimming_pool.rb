class SwimmingPool < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :length, presence: true, numericality: { only_integer: true }
  validates :width, presence: true, numericality: { only_integer: true }
  validates :max_depth, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :max_people, presence: true, numericality: { only_integer: true }


  validates :treatment, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end

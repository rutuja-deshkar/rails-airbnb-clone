class Space < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 3 }
  validates :max_capacity, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
  validates :address, presence: true
  mount_uploader :photo, PhotoUploader
end

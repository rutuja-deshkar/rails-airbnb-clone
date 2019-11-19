class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :max_capacity, presence: true, numericality: { only_integer: true }
  validates :price_per_person, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
end

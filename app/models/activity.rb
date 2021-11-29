class Activity < ApplicationRecord
  has_many :bookings
  has_many :favourites
  has_many :activity_tags
  has_many :reviews, through: :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo
  monetize :price_cents
end

class Activity < ApplicationRecord
  has_many :bookings
  has_many :favourites
  has_many :activity_tags
end

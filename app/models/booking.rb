class Booking < ApplicationRecord
  has_many :review
  belongs_to :user
  belongs_to :activity
  has_one :order
end

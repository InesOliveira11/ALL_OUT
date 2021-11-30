class Order < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  monetize :amount_cents
  belongs_to :booking
end

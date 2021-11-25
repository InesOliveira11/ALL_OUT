class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :activity_tags, dependent: :destroy
  has_many_attached :photos
end

class Question < ApplicationRecord
  has_many :answers
  has_many :activity_tags
end

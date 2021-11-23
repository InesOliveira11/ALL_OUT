class Question < ApplicationRecord
  belongs_to :answer
  belongs_to :activity_tag
end

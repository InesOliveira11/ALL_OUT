class ActivityTag < ApplicationRecord
  belongs_to :question
  belongs_to :activity
end

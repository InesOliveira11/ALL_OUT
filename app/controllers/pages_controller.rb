class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :search ]

  def home
    @first_question = Question.first
  end

  def search
  end
end

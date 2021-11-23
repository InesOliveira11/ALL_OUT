class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @user = current_user
  end
end

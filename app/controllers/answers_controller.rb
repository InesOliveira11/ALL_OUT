class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @user = current_user
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.user = current_user
    if @answer.save!
      redirect_to new_question_answer_path(params[:answer][:next])
    else
      render :new
    end
  end
  private

  def answer_params
    params.require(:answer).permit(:selected_answer, :question_id)
  end
end

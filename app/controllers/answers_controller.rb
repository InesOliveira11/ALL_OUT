class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    if @question == Question.first
      Answer.destroy_by(user_id: current_user.id)
    end
    @answer = Answer.new
    @user = current_user
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.user = current_user
    if @answer.save!
      if @question.next_question_1 || @question.next_question_2 #Question.exists?(params[:answer][:next])
        if @answer.selected_answer == @question.answer_1
          redirect_to new_question_answer_path(@question.next_question_1)
        else
          redirect_to new_question_answer_path(@question.next_question_2)
        end
      else
        redirect_to activities_path
      end
    else
      render :new
    end
  end
  private

  def answer_params
    params.require(:answer).permit(:selected_answer, :question_id)
  end
end

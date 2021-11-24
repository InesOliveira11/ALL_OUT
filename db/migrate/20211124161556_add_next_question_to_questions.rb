class AddNextQuestionToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :next_question_1, :integer
    add_column :questions, :next_question_2, :integer
  end
end

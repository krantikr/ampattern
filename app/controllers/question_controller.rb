class QuestionController < ApplicationController

  def question
    @questions = QuestionType.find_by(question_type: params[:ques_type]).question
  end

end

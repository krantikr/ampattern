class Admin::QuestionController < ApplicationController

  def index
    @question = Question.all

  end

  def new
    @question_types = QuestionType.all
    @company_names = Company.all
    question = Question.new
    question.question = params[:question]
    question.option1 = params[:option_a]
    question.option2 = params[:option_b]
    question.option3 = params[:option_c]
    question.option4 = params[:option_d]
    question.answer = params[:answer]
    question.question_type = params[:type]
    question.company = params[:campony]
    question.approve = true
    question.save
  end

  def show
  end

end

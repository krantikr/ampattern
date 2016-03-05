class Admin::QuestionController < ApplicationController
  before_filter :authenticate_user!
  layout :get_admin_layouts
  def index
    @questions = Question.all

  end

  def new
    # raise params.inspect
    @question_types = QuestionType.all
    @company_names = Company.all
    question = Question.new
    question.question = params[:question]
    question.option1 = params[:option_a]
    question.option2 = params[:option_b]
    question.option3 = params[:option_c]
    question.option4 = params[:option_d]
    question.answer = params[:answer]
    question.question_type_id = params[:type]
    question.company_id = params[:campony]
    question.approve = true
    question.save
  end

  def show
  end

  def edit
    @question = Question.find(params[:id])
    @question_types = QuestionType.all
    @company_names = Company.all
  end

  def update
    question = Question.find(params[:id])
    question.question = params[:question]
    question.option1 = params[:option_a]
    question.option2 = params[:option_b]
    question.option3 = params[:option_c]
    question.option4 = params[:option_d]
    question.answer = params[:answer]
    question.question_type_id = params[:type]
    question.company_id = params[:campony]
    question.approve = true
    question.save
    redirect_to admin_question_index_path
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    respond_to do |format|
      format.json { render json: { status: "success"} }
    end
  end

end
def get_admin_layouts
  "admin/layouts/admin"
end

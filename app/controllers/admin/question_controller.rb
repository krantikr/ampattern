class Admin::QuestionController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_admin
  layout :get_admin_layouts

  def index
    @questions = Question.all
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
    question.question_type_id = params[:type]
    question.company_id = params[:campony]
    if user_signed_in?
      question.user_id = current_user.id
    end
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

  def not_approved
    @questions = Question.where(approve: false)
  end

  def approve
    question = Question.find(params[:id])
    question.approve = true
    question.save
    respond_to do |format|
      format.json { render json: { status: "success"} }
    end
  end

end
def get_admin_layouts
  "admin/layouts/admin"
end


private

  def is_admin
    if user_signed_in?
     if current_user.email == 'kranti_kumar@hotmail.com'
       true
     else
       redirect_to root_path
     end
    else
      redirect_to login_path
    end
  end
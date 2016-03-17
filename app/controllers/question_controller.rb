class QuestionController < ApplicationController

  def question
    @questions = QuestionType.find_by(question_type: params[:ques_type]).question.where(approve: true)
  end

  def add_question
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
    question.approve = false
    question.save
     respond_to do |format|
	    format.json  { render :json => { :status => "ok", :message => "Success" }}
	   end
  end

  def vote
    # raise request.ip.inspect
    @question = Question.find(params[:id])
    @question.vote!(request.ip)
    respond_to do |format|
      format.js
    end
  end

end

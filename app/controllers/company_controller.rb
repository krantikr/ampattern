class CompanyController < ApplicationController

  def company
    questions = Company.find_by(name: params[:company_name]).question.where(approve: true)
    @questions = questions.order("created_at DESC").page params[:page]
  end

end

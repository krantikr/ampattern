class CompanyController < ApplicationController

  def company
    @questions = Company.find_by(name: params[:company_name]).question.where(approve: true)
  end

end

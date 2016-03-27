class HomeController < ApplicationController
  def index
  	@question_types = QuestionType.all
    @company_names = Company.all
  end

  def about
  end

end

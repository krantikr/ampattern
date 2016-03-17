module ApplicationHelper

	def company_name(id)
		Company.find(id).name
	end

	def question_name(id)
		QuestionType.find(id).question_type
	end


end

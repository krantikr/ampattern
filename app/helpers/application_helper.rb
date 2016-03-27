module ApplicationHelper

	def company_name(id)
		if id.present?
			Company.find(id).name
		else
			"Other"
		end	
	end

	def question_name(id)
		if id.present?
			QuestionType.find(id).question_type
		else
			"Other"
		end
	end


end

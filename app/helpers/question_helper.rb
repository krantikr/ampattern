module QuestionHelper
	def question_posted_by(question)
		if question.user_id?
			question.user.email.to_s.split('@')[0].humanize 
		else
			'Guest User'
		end
	end
end

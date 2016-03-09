module HomeHelper
	def aptitude_size
		Question.where(question_type_id: 1, approve: true).size
	end


	def computer_size
		Question.where(question_type_id: 2, approve: true).size
	end

	def english_size
		Question.where(question_type_id: 3, approve: true).size
	end

	def reasoning_size
		Question.where(question_type_id: 4, approve: true).size
	end
end

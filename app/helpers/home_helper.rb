module HomeHelper
	def aptitude_size
		Question.where(question_type_id: 1).size
	end


	def computer_size
		Question.where(question_type_id: 2).size
	end

	def english_size
		Question.where(question_type_id: 3).size
	end

	def reasoning_size
		Question.where(question_type_id: 4).size
	end
end

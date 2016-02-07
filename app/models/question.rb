class Question < ActiveRecord::Base
  belongs_to :ques_type
  belongs_to :company
end

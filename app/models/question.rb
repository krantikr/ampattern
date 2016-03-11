class Question < ActiveRecord::Base
  belongs_to :ques_type
  belongs_to :company
  acts_as_commontable
end

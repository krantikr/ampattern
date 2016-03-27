class Question < ActiveRecord::Base
  belongs_to :ques_type
  belongs_to :company
  has_many :vote
  belongs_to :user, foreign_key: "user_id"
  acts_as_commontable

  def vote!(ip)
   if Vote.exists?(:ip => ip, :question_id => id)
   	 vote = Vote.find_by(:ip => ip, :question_id => id)
   	 vote.delete
   else
     Vote.create(:ip => ip, :question_id => id)
   end
  end

end

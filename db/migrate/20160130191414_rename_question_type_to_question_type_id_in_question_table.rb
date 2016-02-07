class RenameQuestionTypeToQuestionTypeIdInQuestionTable < ActiveRecord::Migration
  def change
    rename_column :questions, :question_type, :question_type_id
  end
end

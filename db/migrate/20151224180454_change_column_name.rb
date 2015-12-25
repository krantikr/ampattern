class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :question_types, :type, :question_type
    rename_column :questions, :type, :question_type
  end
end

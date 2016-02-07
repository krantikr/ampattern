class ChangeCompanyIdStringToArrayInQuestionTable < ActiveRecord::Migration
  def change
    change_column :questions, :company_id, :integer, array: true
  end
end

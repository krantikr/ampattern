class RenameCompanyToCompanyIdInQuestionTable < ActiveRecord::Migration
  def change
    rename_column :questions, :company, :company_id
  end
end

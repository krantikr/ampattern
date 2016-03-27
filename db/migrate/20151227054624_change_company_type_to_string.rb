class ChangeCompanyTypeToString < ActiveRecord::Migration
  def change
    change_column :questions, :company, :integer
  end
end

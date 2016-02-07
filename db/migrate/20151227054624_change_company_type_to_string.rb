class ChangeCompanyTypeToString < ActiveRecord::Migration
  def change
    change_column :questions, :company, :string
  end
end

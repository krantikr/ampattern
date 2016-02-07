class CamponyStringToInt < ActiveRecord::Migration
  def change
    change_column :questions, :company_id, :integer
  end
end

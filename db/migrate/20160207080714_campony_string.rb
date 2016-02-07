class CamponyString < ActiveRecord::Migration
  def change
    change_column :questions, :company_id, :string
  end
end

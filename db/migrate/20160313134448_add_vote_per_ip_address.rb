class AddVotePerIpAddress < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
      t.integer :question_id
      t.string  :ip
    end
  end
end

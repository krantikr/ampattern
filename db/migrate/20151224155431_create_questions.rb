class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer
      t.integer :type
      t.integer :company
      t.boolean :approve, default: false

      t.timestamps null: false
    end
  end
end

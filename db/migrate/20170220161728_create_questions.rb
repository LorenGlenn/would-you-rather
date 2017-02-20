class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :option_1
      t.string :option_2
      t.timestamps
    end
  end
end

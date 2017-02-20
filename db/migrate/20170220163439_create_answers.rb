class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :option_1, default: false
      t.boolean :option_2, default: false
      t.timestamps
    end
  end
end

class CreateAnswerFormPosibleAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_form_posible_answers do |t|
      t.string :answer
      t.belongs_to :answer_form_field, null: false, foreign_key: true

      t.timestamps
    end
  end
end

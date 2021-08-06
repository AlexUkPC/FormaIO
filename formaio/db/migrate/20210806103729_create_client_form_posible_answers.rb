class CreateClientFormPosibleAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :client_form_posible_answers do |t|
      t.string :answer
      t.string :section
      t.belongs_to :client_form_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateClientFormQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :client_form_questions do |t|
      t.string :question
      t.string :answer_type
      t.boolean :answers_are_sections
      t.text :info
      t.boolean :is_required
      t.belongs_to :client_form_section, null: false, foreign_key: true

      t.timestamps
    end
  end
end

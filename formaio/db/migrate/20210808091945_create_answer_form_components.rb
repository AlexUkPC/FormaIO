class CreateAnswerFormComponents < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_form_components do |t|
      t.string :name
      t.boolean :is_text_area
      t.belongs_to :answer_form_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAnswerFormFields < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_form_fields do |t|
      t.string :component
      t.string :field_type
      t.belongs_to :answer_form_component, null: false, foreign_key: true

      t.timestamps
    end
  end
end

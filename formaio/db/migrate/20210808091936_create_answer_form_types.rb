class CreateAnswerFormTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_form_types do |t|
      t.string :name
      t.belongs_to :client_form_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

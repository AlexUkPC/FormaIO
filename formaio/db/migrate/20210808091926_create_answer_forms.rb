class CreateAnswerForms < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_forms do |t|
      t.string :name
      t.string :status
      t.decimal :total_price
      t.integer :answer_form_type_id
      t.text :properties

      t.timestamps
    end
  end
end

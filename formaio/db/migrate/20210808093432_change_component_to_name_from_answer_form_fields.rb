class ChangeComponentToNameFromAnswerFormFields < ActiveRecord::Migration[6.1]
  def change
    rename_column :answer_form_fields, :component, :name
  end
end

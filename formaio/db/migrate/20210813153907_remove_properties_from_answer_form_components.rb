class RemovePropertiesFromAnswerFormComponents < ActiveRecord::Migration[6.1]
  def change
    remove_column :answer_form_components, :properties, :text
  end
end

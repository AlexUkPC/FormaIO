class AddPropertiesToAnswerFormComponents < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_form_components, :properties, :text
  end
end

class AddClientFormIdToAnswerForm < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_forms, :client_form_id, :integer
  end
end

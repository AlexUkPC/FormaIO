class AddInfoToClientFormPosibleAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :client_form_posible_answers, :info, :text
  end
end

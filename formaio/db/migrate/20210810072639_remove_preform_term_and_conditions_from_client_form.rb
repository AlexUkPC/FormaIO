class RemovePreformTermAndConditionsFromClientForm < ActiveRecord::Migration[6.1]
  def change
    remove_column :client_forms, :preform_term_and_conditions, :text
  end
end

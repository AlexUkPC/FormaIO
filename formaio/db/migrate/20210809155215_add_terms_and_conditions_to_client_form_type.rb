class AddTermsAndConditionsToClientFormType < ActiveRecord::Migration[6.1]
  def change
    add_column :client_form_types, :preform_term_and_conditions, :text
  end
end

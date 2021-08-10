class AddAgreeTermsAndConditionsToClientForms < ActiveRecord::Migration[6.1]
  def change
    add_column :client_forms, :preform_term_and_conditions, :text
    add_column :client_forms, :agee_preform_t_and_c, :boolean
  end
end

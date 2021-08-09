class CreateJoinTableClientFormTypesClientFormCategories < ActiveRecord::Migration[6.1]
  def change
    create_join_table :client_form_types, :client_form_categories do |t|
      # t.index [:client_form_type_id, :client_form_category_id]
      # t.index [:client_form_category_id, :client_form_type_id]
    end
  end
end

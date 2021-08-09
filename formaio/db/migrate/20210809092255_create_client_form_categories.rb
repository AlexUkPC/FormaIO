class CreateClientFormCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :client_form_categories do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end

class CreateClientFormSections < ActiveRecord::Migration[6.1]
  def change
    create_table :client_form_sections do |t|
      t.string :name
      t.boolean :is_default
      t.decimal :extra_price
      t.belongs_to :client_form_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

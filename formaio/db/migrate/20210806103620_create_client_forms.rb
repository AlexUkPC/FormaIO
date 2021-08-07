class CreateClientForms < ActiveRecord::Migration[6.1]
  def change
    create_table :client_forms do |t|
      t.string :name
      t.decimal :total_price
      t.string :status
      t.boolean :is_payed
      t.integer :client_form_type_id
      t.text :properties

      t.timestamps
    end
  end
end

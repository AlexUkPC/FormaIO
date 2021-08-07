class CreateClientFormTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :client_form_types do |t|
      t.string :name
      t.text :description
      t.boolean :is_activ
      t.decimal :price

      t.timestamps
    end
  end
end

class AddAditionalInfoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, unique: true
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
  end
end

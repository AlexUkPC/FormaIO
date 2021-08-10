class AddUserIdToClientForm < ActiveRecord::Migration[6.1]
  def change
    add_column :client_forms, :user_id, :integer
  end
end

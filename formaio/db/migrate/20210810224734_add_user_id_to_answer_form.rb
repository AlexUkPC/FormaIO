class AddUserIdToAnswerForm < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_forms, :user_id, :integer
  end
end

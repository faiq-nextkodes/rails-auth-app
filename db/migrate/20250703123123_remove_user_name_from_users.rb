class RemoveUserNameFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :user_name
  end
end

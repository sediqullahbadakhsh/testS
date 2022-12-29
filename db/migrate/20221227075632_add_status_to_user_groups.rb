class AddStatusToUserGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :user_groups, :status, :boolean
  end
end

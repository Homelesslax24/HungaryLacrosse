class AddAdminUsersToEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :admin_user_id
    add_reference :events, :admin_user, index: true
  end
end

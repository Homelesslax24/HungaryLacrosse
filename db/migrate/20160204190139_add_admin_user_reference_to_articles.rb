class AddAdminUserReferenceToArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :admin_user_id
    add_reference :articles, :admin_user, index: true
  end
end

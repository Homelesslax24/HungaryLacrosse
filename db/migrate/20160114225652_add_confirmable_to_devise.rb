class AddConfirmableToDevise < ActiveRecord::Migration
	def up
    add_column :admin_users, :confirmation_token, :string
    add_column :admin_users, :confirmed_at, :datetime
    add_column :admin_users, :confirmation_sent_at, :datetime
    # add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :admin_users, :confirmation_token, unique: true
   AdminUser.all.update_all confirmed_at: Time.now
  end

  def down
    remove_columns :admin_users, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end

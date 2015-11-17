class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :mi, :string
    add_column :users, :uslnumber, :integer
    add_column :users, :uslexpdate, :date
    add_column :users, :birthday, :date
    add_column :users, :address, :string
    add_column :users, :apt, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :integer
    add_column :users, :phonenumber, :integer
  end
end

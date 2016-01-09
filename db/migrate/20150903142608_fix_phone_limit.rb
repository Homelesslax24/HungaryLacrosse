class FixPhoneLimit < ActiveRecord::Migration
  def self.up
  	change_column :users, :phonenumber, :integer, :limit => 10
  	change_column :users, :uslnumber, :integer, :limit => 10
  end

  def self.down
  	change_column :users, :phonenumber, :integer, :limit => 4
  	change_column :users, :uslnumber, :integer, :limit => 4
  end
end

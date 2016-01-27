class AddImageToStaffs < ActiveRecord::Migration
  def self.up
    change_table :staffs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :staffs, :image
  end
end

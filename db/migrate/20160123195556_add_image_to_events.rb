class AddImageToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :featured_image
    end
  end

  def self.down
    remove_attachment :events, :featured_image
  end
end

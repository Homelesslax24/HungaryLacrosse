class AddFeaturedImageToArticles < ActiveRecord::Migration
  def self.up
  	add_column :articles, :featured_image, :attachment
  end

  def self.down
    remove_attachment :articles, :featured_image
  end
end

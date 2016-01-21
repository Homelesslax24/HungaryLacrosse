class AddPublishedColumnsToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :published, :boolean
  	add_column :articles, :published_at, :date
  end
end

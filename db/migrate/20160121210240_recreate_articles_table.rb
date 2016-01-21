class RecreateArticlesTable < ActiveRecord::Migration
  def change
  	create_table :articles do |t|
    	t.string :title
    	t.string :subtitle
    	t.text :text
    	t.boolean :hu
    	t.boolean :en
    	t.integer :admin_user_id
    	t.boolean :published
    	t.date :published_at
    	t.timestamps null: false
    end
  end
end
class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :subtitle
    	t.text :text
    	t.boolean :hu
    	t.boolean :en
    	t.integer :admin_user_id
    	t.timestamps
    end
  end
end

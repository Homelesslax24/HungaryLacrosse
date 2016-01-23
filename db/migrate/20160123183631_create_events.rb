class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.date :start_date
    	t.date :end_date
    	t.string :website
    	t.text :text
    	t.boolean :published
    	t.boolean :hu
    	t.boolean :en
    	t.integer :admin_user_id
    	t.timestamps null: false
    end
  end
end

class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
    	t.string :name
    	t.string :website
    	t.boolean :published
    	t.integer :priority
      t.timestamps null: false
    end
  end
end

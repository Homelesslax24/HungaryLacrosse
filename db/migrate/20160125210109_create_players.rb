class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name
    	t.string :position
    	t.integer :number
    	t.string :club
    	t.text :text
      t.timestamps null: false
    end
  end
end

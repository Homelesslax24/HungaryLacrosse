class AddColumnsToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :website, :string
  	add_column :teams, :men, :boolean
  	add_column :teams, :women, :boolean
  	add_column :teams, :boys, :boolean
  	add_column :teams, :girls, :boolean
  end
end

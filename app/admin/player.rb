ActiveAdmin.register Player do
	before_filter :authenticate_admin_user!

	index do
		column :number
		column :name
		column :position
		column :club
		actions
	end

	form do |f|
    f.inputs "Player" do
      f.input :name
      f.input :number
      f.input :position, :as => :select, :collection => ["Attack", "Midfield", "Defense", "Goalie"]
      f.input :club
      f.input :image
      f.input :text
    end
    f.actions
  end

	permit_params :name, :number, :position, :club, :text, :image


end

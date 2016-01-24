ActiveAdmin.register Sponsor do

 	index do
		column :name
		column :website
		column :priority
		column :published
		column :updated_at
		actions
	end

	form do |f|
    f.inputs "Sponsor" do
      f.input :name
      f.input :website
      f.input :logo
      f.input :priority, :as => :select, :collection => (1..10).to_a
			f.input :published
    end
    f.actions
  end

	permit_params :name, :website, :published, :priority, :logo

end
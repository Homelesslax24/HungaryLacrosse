ActiveAdmin.register Team do

	index do
		column :name
		column :website
		column :men
		column :women
		column :boys
		column :girls
		actions
	end

	show do
		attributes_table do
			row :name
			row :website
			row :men
			row :women
			row :boys
			row :girls
			row :image
		end
	end

	form do |f|
    f.inputs "Article" do
      f.input :name
      f.input :website
      f.input :image
			f.input :men
			f.input :women
			f.input :boys
			f.input :girls
    end
    f.actions
  end

	permit_params :name, :image, :website, :men, :women, :boys, :girls

end

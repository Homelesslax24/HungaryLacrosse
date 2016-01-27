ActiveAdmin.register Staff do
	menu label: "Staff"
	before_filter :authenticate_admin_user!

	index do
		column :name
		column :title
		actions
	end

	form do |f|
    f.inputs "Staff" do
      f.input :name
      f.input :title
      f.input :image
      f.input :text
    end
    f.actions
  end

	permit_params :name, :title, :text, :image

end

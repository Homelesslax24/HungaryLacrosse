ActiveAdmin.register AdminUser do
  before_filter :authenticate_admin_user!

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :sign_in_count
      row :current_sign_in_at
      row :last_sign_in_at
      row :current_sign_in_ip
      row :last_sign_in_ip
      row :created_at
      row :updated_at
      row :confirmed_at
      row :confirmation_sent_at
    end
  end


  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  filter :email 
  filter :current_sign_in_at
  filter :last_sign_in_at
  filter :created_at
  filter :updated_at
  filter :confirmed_at
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :id, :email, :password, :password_confirmation
	
end

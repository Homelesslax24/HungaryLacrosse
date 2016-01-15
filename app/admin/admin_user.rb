ActiveAdmin.register AdminUser do


  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  # show do
  #   column :id
  #   column :email
  #   column :sign_in_count
  #   column :current_sign_in_at
  #   column :last_sign_in_at
  #   column :current_sign_in_ip
  #   column :last_sign_in_ip
  #   column :created_at
  #   column :updated_at
  #   column :confirmed_at
  #   column :onfirmation_sent_at
  # end


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
	permit_params :email, :password, :password_confirmation
	
end

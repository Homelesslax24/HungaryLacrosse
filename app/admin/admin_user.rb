ActiveAdmin.register AdminUser, as: "Admins" do

  before_filter :authenticate_admin_user!

  controller do
    def update
      if params[:admin_user][:password].blank?
        params[:admin_user].delete("password")
        params[:admin_user].delete("password_confirmation")
      end
      super
    end

    private

      def admin_user_params
        params.require(:admin_user).permit(:email, :password, :password_confirmation, :super_admin)
      end
  end

# Prescribes the columns for the Index view
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  # Prescribes the filters available on the Index view
  filter :email 
  filter :current_sign_in_at
  filter :last_sign_in_at
  filter :created_at
  filter :updated_at
  filter :confirmed_at

# Prescribes the rows for the Show view
  show do
    attributes_table do
      row :id
      row :email
      row :super_admin
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

# Prescribes the form entries for Edit and New
  form do |f|
    f.inputs "Admin Details" do
      devise_error_messages!
      f.input :email
      f.input :password
      f.input :password_confirmation
      if current_admin_user.super_admin == true
        f.input :super_admin
      end  
    end
    f.actions
  end
  
	permit_params :email, :password, :password_confirmation, :super_admin
	
end

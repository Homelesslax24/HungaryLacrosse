ActiveAdmin.register Event do

	controller do
		def create
	    @event = current_admin_user.events.build(event_params)
	    
	    if @event.save 
	      flash[:success] = "Your event was created successfully!"
	      redirect_to admin_events_path
	    else
	      render action: 'new'
	    end  
	  end  

	  private

	  	def event_params
		    params.require(:event).permit(:name, :website, :start_date, :end_date, :text, :published, :en, :hu)
		  end

	end  

	index do
		column :name
		column :website
		column :start_date
		column :end_date
		column :published
		column :hu
		column :en
		column :admin_user_id
		actions
	end

	# show do
	# 	attributes_table do
	# 		row :name
	# 		row :website
	# 		row :men
	# 		row :women
	# 		row :boys
	# 		row :girls
	# 		row :image
	# 	end
	# end

	form do |f|
    f.inputs "Event" do
      f.input :name
      f.input :website
      f.input :start_date
      f.input :end_date
			f.input :text
			f.input :published
			f.input :en
			f.input :hu
    end
    f.actions
  end

	permit_params :name, :website, :start_date, :end_date, :text, :published, :en, :hu

end

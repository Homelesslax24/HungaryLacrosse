ActiveAdmin.register Article, as: "News" do

	controller do
		def create
	    @article = current_admin_user.articles.build(article_params)
	    
	    if @article.save 
	      flash[:success] = "Your article was created successfully!"
	      redirect_to admin_news_index_path
	    else
	      redirect_to edit_admin_news_path(params(:id))
	    end  
	  end  

	  private

	  	def article_params
		    params.require(:article).permit(:title, :subtitle, :text, :hu, :en, :published, :published_at, :featured_image, :keywords)
		  end

	end  

	index do
		column :title
		column :admin_user_id, as: "Author"
		column :published
		column :hu, as: "Hungarian"
		column :en, as: "English"
		actions
	end

	show do
		attributes_table do
			row :id
			row :published
			row :published_at
			row :admin_user_id, label: "Author"
			row :title
			row :subtitle
			row :text
			row :featured_image
			row :keywords
			row :hu, label: "Hungarian"
			row :en, as: "English"
			row :created_at
			row :updated_at, as: "Last Update"
		end
	end

		form do |f|
	    f.inputs "Article" do
	      f.input :title
	      f.input :subtitle
	      f.input :text
	      f.input :keywords
	      f.input :featured_image
		    f.input :published_at
		    f.input :published
	      f.input :hu, label: "Hungarian"
	      f.input :en, label: "English"
	    end
	    f.actions
	  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :title, :subtitile, :text, :hu, :en, :published, :published_at, :featured_image, :keywords
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

end

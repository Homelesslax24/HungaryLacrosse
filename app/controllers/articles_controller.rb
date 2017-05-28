class ArticlesController < ApplicationController
	before_action :authenticate_admin_user!, except: [:index, :show]

  def index
    @articles = Article.all.order("published_at DESC").where(:published => true).paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

	# def new
 #    @article = current_admin_user.articles.build
 #  end

	def create
    @article = current_admin_user.articles.build(article_params)
    
    if @article.save 
      flash[:success] = "Your article was created successfully!"
      render action: 'index'
    else
      render root_path
    end  
  end  

  private

    # Use strong_parameters for attribute whitelisting
    # Be sure to update your create() and update() controller methods.

    def article_params
      params.require(:article).permit(:featured_image)
    end

    def article_params
      params.require(:article).permit(:id, :title, :subtitle, :text, :hu, :en, :published, :published_at, :created_at, :updated_at, :featured_image_file_name, :featured_image_content_type, :featured_image_file_size, :featured_image_updated_at, :keywords, :featured_image)
    end

end




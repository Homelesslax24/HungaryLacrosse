class ArticlesController < ApplicationController
	before_action :authenticate_admin_user!, except: [:index, :show]

  def index
    @articles = Article.all.order("published_at DESC").where(:published => true).paginate(:page => params[:page], :per_page => 3)
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

	def new
    @article = current_admin_user.articles.build
  end

	def create
    @article = current_admin_user.articles.build(article_params)
    
    if @article.save 
      flash[:success] = "Your article was created successfully!"
    else
      render action: 'new'
    end  
  end  

  private

    # Use strong_parameters for attribute whitelisting
    # Be sure to update your create() and update() controller methods.

    def article_params
      params.require(:article).permit(:featured_image)
    end

end

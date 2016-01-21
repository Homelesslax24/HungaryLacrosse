class PagesController < ApplicationController
	before_action :authenticate_admin_user!, except: [:index, :show]

	def home
		@articles = Article.all.order("published_at DESC").where(:published => true).limit(3)
		@more_articles = true
	end

	def show
		@article = Article.find_by(id: params[:id])
	end

  private

	  def article_params
	    params.require(:article).permit(:title, :subtitle, :text, :hu, :en)
	  end

end


class PagesController < ApplicationController
	before_action :authenticate_admin_user!, except: [:index, :show]

	def home
		#Supports News/Article functionality on the home page
		@articles = Article.all.order("published_at DESC").where(:published => true).limit(3)
		@more_articles = true

		#Supports Team functionality on the home page
		@teams = Team.all.order("name ASC")

		#Supports Events functionality on the home page
		@events = Event.all.order("start_date ASC").where(:published => true).limit(2)

		#Supports Events functionality on the home page
		@sponsors = Sponsor.all.order("priority ASC").where(:published => true)
	end

	def show
		@article = Article.find_by(id: params[:id])
	end

  private

	  # def article_params
	  #   params.require(:article).permit(:title, :subtitle, :text, :hu, :en)
	  # end

end


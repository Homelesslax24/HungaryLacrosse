class PagesController < ApplicationController
	# before_action :authenticate_admin_user!, except: [:index, :show]

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

	def nationalteam
		#Supports Staff functionality on the national team page(s)
		@staffs = Staff.all

		#Supports Player functionality on the national team page(s)
		@players = Player.all.order("number ASC")
	end

	def show
		@article = Article.find_by(id: params[:id])
		@staff = Staff.find_by(id: params[:id])
		@player = Player.find_by(id: params[:id])
	end

end


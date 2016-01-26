class StaffsController < ApplicationController
	def show
		@staff = Staff.find_by(id: params[:id])
	end
end

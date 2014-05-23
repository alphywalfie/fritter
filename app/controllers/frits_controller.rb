class FritsController < ApplicationController
	def index
		@frits = current_user.frits
	end

	def new
		@prompt = Prompt.Sample(1)
		@limit = Limit.Sample(1)
		@frit = Frit.new
	end

	def create
		@frit = Frit.new
		@frit.content = params[:frit][:content]
		@frit.posted_on = DateTime.now
		@frit.user = current_user
		@frit.prompt = params[:frit][:prompt]
		@frit.limit = params[:frit][:limit]
		@frit.save!
	end

	def edit
		@frit = Frit.find(params[:id])
	end

	def update
		@frit =Frit.find(params[:id])
		@frit.content = params[:frit][:content]
		@frit.save!
	end

	def delete
		@frit = Frit.find(params[:id])
		@frit.destroy!
		redirect_to index_path
		#FIGURE OUT HOW THE FUCK TO DELETE STUFF
	end
end
class FritsController < ApplicationController
	def index
		@frits = current_user.frits
	end

	def new
		@prompt = Prompt.Sample(1)
		@limit = Limit.Sample(1)
		frit = Frit.new
#		current_prompt = @prompt
#		current_limit = @limit
	end

	def create
		@frit = Frit.new
		@frit.content = params[:frit][:content]
		@frit.posted_on = DateTime.now
		@frit.user = current_user
		@frit.prompt = current_prompt
		@frit.limit = current_limit
		@frit.save!
	end
end
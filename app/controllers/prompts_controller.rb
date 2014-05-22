class PromptsController < ApplicationController
	def index
		@all_prompts = Prompt.all
	end
end

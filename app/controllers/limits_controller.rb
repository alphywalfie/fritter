class LimitsController < ApplicationController

	def index
		@all_limits = Limit.all
	end
end

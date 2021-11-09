class HomeController < ApplicationController

	def profile
		@users=User.all
	end
end

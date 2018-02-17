class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :authenticate_user!, only: [:index]

	def index		
	end

	def contact		
	end

	def create
		flash[:success] = "Thank you for your submit. You will received an message from us!"
		redirect_to root_path
	end
	
end

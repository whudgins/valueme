class LoginController < ApplicationController
skip_before_filter  :verify_authenticity_token

	def index
	end

	def show
	end

	# POST /login
	# POST /login.json
	def login
		@username = params[:username]
		@password = params[:password]
		puts @username
		puts @password

		@user = User.where(email: @username)
		puts "Found " + @user.size.to_s + " users"
		#add logic to check pw

		puts @user[0]['id']

		respond_to do |format|
			if @user != nil
				format.html { redirect_to user_path(@user[0]['id'])}
			else
				format.html { render action: 'index' }
				format.json { render json: 'index' }
			end
		end
	end

end

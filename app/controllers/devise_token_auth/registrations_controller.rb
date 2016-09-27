class DeviseTokenAuth::RegistrationsController < ApplicationController

	def create
		@user = User.new(email: params["email"], password: params["password"], password_confirmation: params["password_confirmation"])
		@user.save
		render json: {
			status: 200,
			message: "it worked",
			user: @user
		}
	end
end

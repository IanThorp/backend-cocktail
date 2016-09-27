class DeviseTokenAuth::RegistrationsController < ApplicationController

	def create
		@user = User.new(email: params[0].value, password: params[1].value, password_confirmation: params[2].value)
		@user.save
		render json: {
			status: 200,
			message: "it worked",
			user: @user
		}
	end
end

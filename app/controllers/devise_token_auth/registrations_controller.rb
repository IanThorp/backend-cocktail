class DeviseTokenAuth::RegistrationsController < ApplicationController

	def create
		render json: {status: "ok", message: "it worked"}
	end
end

class ApplicationController < ActionController::Base
	
	def authenticate
		if !signed_in?
			redirect_to new_session_path
	end

	def signed_in?
		session[:current_email].present?
	end

end

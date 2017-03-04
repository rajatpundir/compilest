class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private
	
	def confirm_logged_in
		unless session[:user_id]
			redirect_to(access_login_path)
		end
		if session[:user_id]
			user = AdminUser.find(session[:user_id])
			if !user.superuser
				if (user.score != -1)
					if (Time.now-user.created_at > 1200)
						redirect_to('/access/logout')
					end
				end
			end
		end
	end

	def is_superuser
		user = AdminUser.find(session[:user_id])
		unless user.superuser?
			redirect_to(exams_path)
		end
	end
  
end

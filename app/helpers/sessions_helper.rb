module SessionsHelper
  # def log_in(user)
  #   session[:user_id] = user.id
  # end

  # def remember(user)
  #   user.remember
  #   # Then we need to set the cookies
  #   # cookies[:user_id] = { value: user.id,
  #   #                       expires: 20.years.from_now.utc}
  #   # short hand form of above 
  #   cookies.permanent.signed[:user_id] = user.id
  #   cookies.permanent[:remember_token] = user.remember_token
  # end

  # def current_user
  #   if session[:user_id]
  #     @current_user = @current_user || User.find_by(id: session[:user_id])
  #   elsif cookies.signed[:user_id]
  #     user = User.find_by(id: cookies.signed[:user_id])
  #     if user && user.authenticated?(cookies[:remember_token])
  #       log_in user
  #       @current_user = user
  #     end
  #   end
  # end

  # def logged_in?
  #   !current_user.nil?
  # end

  # # Forgets a persistent session
  # def forget(user)
  #   user.forget
  #   cookies.delete(:user_id)
  #   cookies.delete(:remember_token)
  # end

  # def log_out
  #   forget(current_user)
  #   session.delete(:user_id)
  #   @current_user = nil
  # end

  # #Redirects to stored location or default
  # def redirect_back_or(user)
  #   redirect_to(session[:forwarding_url] || user) # user or default
  #   session.delete(:forwarding_url)
  # end

  # #Stores the URL trying to be accessed
  # def store_location
  #   session[:forwarding_url] = request.original_url if request.get?
  # end
  
end

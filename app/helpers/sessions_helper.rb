module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id
    end
    
    #returns current user if there is one
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) 
    end
    
    def logged_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:user_id)    #remove user id from session
        @current_user = nil    #set current user to nil
    end
end

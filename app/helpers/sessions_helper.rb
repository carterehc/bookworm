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
    
    #def remember(user)    #to remember user
    #    user.remember
    #    cookies.permanent.signed[:user_id] = user.id
    #    cookies.permanent[:remember_token] = user.remember_token
    #end
    
    #def forget(user)
        
    #end
    
    def current_user?(user)
        user==current_user
    end
    
    def redirect_back_or(default)    #for friendly forwarding. unused
        redirect_to(session[:forwarding_url] || default)
        session.delet(:forwarding_url)
    end
    
    def store_location    #for friendly forwarding. unused
        session[:forwarding_url] = request.original_url if request.get?
    end
end

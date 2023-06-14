class ApplicationController < ActionController::Base


    #CHRRLLL
    helper_method :current_user, :logged_in?

    def current_user
        @current_user = User.find_by(session: session[session_token ]) 
    end 

    def require_logged_in
        redirect_to session_url 
    end 
    
    def require_logged_out
        redirect_to goals_url
    end 

    def logged_in?
        !!current_user
    end 

    def login(user)
        session[:session_token]= user.reset_session_token! 
    end 

    def logout
        current_user.reset_session_token!
        session[:session_token] = nil 
        @current_user = nil 
        
    end 



end

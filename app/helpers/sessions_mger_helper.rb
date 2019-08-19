module SessionsMgerHelper
    
        #logs in - store in the session the user infos
    def log_in(user)
       
        session[:user_id] = user.id 
    end
    
    #returns infos of current user
      def current_user
          @current_user ||= StockManager.find_by(id: session[:user_id]);
    end
    
    #booleans that return true if user is logged in
    def logged_in?
        !current_user.nil?
    end
    
    def log_out
    session.delete(:user_id)
    @current_user = nil
  end
    
end

class SessionsMgerController < ApplicationController
    layout 'application'
    
  def new
  end
    
    def create
        user = StockManager.find_by(email: params[:session][:email])
        
        if user && StockManager.authenticate(params[:session][:email], params[:session][:password])
            
            log_in user
            redirect_to user
        else
            flash.now[:error] = 'Invalid or non-lllexistant user/password'
            render 'new'
        end
    end
    
    def destroy
        log_out
        redirect_to  loginmanager_path
    end
end

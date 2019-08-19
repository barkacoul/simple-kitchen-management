class SessionsController < ApplicationController
    
    layout 'application'

    
  def new
  end
    
    def create
        user = Chef.find_by(email: params[:session][:email])
        
        if user && Chef.authenticate(params[:session][:email], params[:session][:password])
            
            log_in user
            redirect_to user
        else
            flash.now[:error] = 'Invalid or non-existant user/password'
            render 'new'
        end
    end
    
    def destroy
        log_out
        redirect_to  login_path
    end
    
    
end

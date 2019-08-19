class ChefsController < ApplicationController
    
    layout 'application'
    
    def show
    end
    
    
    
    #function for registering new user.
    
    def new
        
        @chef = Chef.new
        
        
    end
    
    
    def create
        
        params.permit!
        @chef = Chef.new(params[:chef])
        
        
        if @chef.save
        
        redirect_to home_index_path    

        #rescue ActiveRecord::RecordInvalid      

        else
            
        render :action => 'new' 
        end

    end
        
        
        
        def edit
        end
        
        def update
            params.permit!
        end
        
        def destroy
        end
        
end

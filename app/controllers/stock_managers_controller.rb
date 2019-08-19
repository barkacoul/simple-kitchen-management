class StockManagersController < ApplicationController
    
    layout 'application'
    
    
    def show
    end
    
    
    
    #function for registering new user.
    
    def new
        
        @stock_manager = StockManager.new
        
        
    end
    
    
    def create
        
        params.permit!
        @stock_manager = StockManager.new(params[:stock_manager])
        
        
        if @stock_manager.save
        
            redirect_to home_index_path        

        else
            
        render :action => 'new' 
        end

    end
        
        
        
        def edit
        end
        
        def update
        end
        
        def destroy
        end
    
    
    
end

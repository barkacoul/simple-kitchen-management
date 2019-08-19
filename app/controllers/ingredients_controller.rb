class IngredientsController < ApplicationController
    
    layout 'application'
    
    def index
        @ingredients = Ingredient.all
    end
    
  def new
      @ingredients = Ingredient.new
  end
    
    def create
        params.permit!
        
        @ingredients = Ingredient.new(params[:ingredient])
        
            if @ingredients.save
        
            redirect_to ingredients_path(@ingredients)   
        #rescue ActiveRecord::RecordInvalid      
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
    

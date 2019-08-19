class RecipesController < ApplicationController
layout 'application'
    
    
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
        
        @recipes = Recipe.all.order("created_at DESC")
    end
    
    
    def show
    end
    
    
  def new
        @recipe = Recipe.new
        #@all_ingredients = Ingredient.all
        @ingredient_recipe = @recipe.ingredients_recipes.build
  end
    
    
    def create
        
        params.permit!

        @recipe = Recipe.new(params[:recipe])
        
        recipe_id = params[:recipe][:id]
        
        main_param = params[:recipe][:ingredients_recipes_attributes]
       # ingredients_attr = main_param[:ingredients_recipes_attributes]
        
        main_param.values.each do |ingr|
        
            if !ingr[:ingredient_id].empty? && !ingr[:quantity].empty?
                @recipe.ingredients_recipes.build(:ingredient_id => ingr['ingredient_id'], :recipe_id => recipe_id, :quantity => ingr['quantity'] )
            end
        end
        
        if @recipe.save
            redirect_to recipes_path(@recipe)    
        #rescue ActiveRecord::RecordInvalid      
            else    
            render :action => 'new' 
         end
    end
    
     def edit
        end
    
    def update
        params.permit!
        
        if @recipe.update(params[:recipe])
            redirect_to @recipe
        else
            render 'edit'
        end
    end
    
        
    def destroy
        @recipe.destroy
        redirtect_to recipes, success: "Recipe successfuly added"
    end
    
    
    private 
    
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
    
  end


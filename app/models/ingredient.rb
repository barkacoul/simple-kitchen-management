class Ingredient < ActiveRecord::Base
    
    has_many :ingredients_recipes #, :dependant => :destroy
    has_many :recipes, :through => :ingredients_recipes
   
    
    attr_accessor :ingall
end

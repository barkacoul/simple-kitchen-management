class IngredientsRecipe < ActiveRecord::Base
    belongs_to :recipe
    belongs_to :ingredient
    
   # validates :ingredient_id, presence: true
    #validates :recipe_id, presence: true
    #validates :quantity, presence: true
end

class Recipe < ActiveRecord::Base
    has_many :ingredients_recipes #, :dependant => :destroy
    has_many :ingredients, :through => :ingredients_recipes
    accepts_nested_attributes_for :ingredients_recipes, reject_if: :all_blank, allow_destroy: true
    belongs_to :chef
    #has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
    #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    #attr_accessor   "image_file_name"
    #attr_accessor   "image_content_type"
    #attr_accessor  "image_file_size"
    #attr_accessor "image_updated_at"
    
end

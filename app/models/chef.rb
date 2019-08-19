class Chef < ActiveRecord::Base
    has_many :recipes
    accepts_nested_attributes_for :recipes, reject_if: :all_blank, allow_destroy: true
    
    def password=(value)
        
        write_attribute("password", Digest::SHA1.hexdigest(value))
        
    end
    
    
    def self.authenticate(email, password)
        user = Chef.find_by(email: email)
        
        if user && user.password = Digest::SHA1.hexdigest(password)
            user
        else
            nil
        end
    end
end

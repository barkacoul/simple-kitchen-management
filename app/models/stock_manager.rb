class StockManager < ActiveRecord::Base
    has_many :ingredients
    
    
    def password=(value)
        
        write_attribute("password", Digest::SHA1.hexdigest(value))
        
    end
    
     def self.authenticate(email, password)
         user = StockManager.find_by(email: email)
        
         if user && user.password = Digest::SHA1.hexdigest(password)
            user
        else
            nil
        end
    end
    

end

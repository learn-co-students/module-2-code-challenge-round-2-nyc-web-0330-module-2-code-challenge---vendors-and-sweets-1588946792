class VendorSweet < ApplicationRecord

    belongs_to :sweet
    belongs_to :vendor

    
    validates :price, numericality: {greater_than_or_equal_to: 1}
    
    
    
    validate :same_sweet_seller

    def same_sweet_seller
        if vendor.name && sweet.name > 1
            self.error.add(:name, "Pairs are not allowed")
        end
    end
end

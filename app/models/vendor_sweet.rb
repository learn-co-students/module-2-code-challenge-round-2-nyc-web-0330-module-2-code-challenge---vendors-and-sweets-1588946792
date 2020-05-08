class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet

    validates :price, absence: true
    validates :price, numericality: { greater_than: 0 }
end

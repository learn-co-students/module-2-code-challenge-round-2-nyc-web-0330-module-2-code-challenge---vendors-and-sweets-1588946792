class Vendor < ApplicationRecord
    has_many :sweets

    def list
        self.vendor_sweets
        byebug

    end
end

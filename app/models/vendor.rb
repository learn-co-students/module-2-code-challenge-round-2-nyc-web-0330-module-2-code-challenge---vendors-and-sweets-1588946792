class Vendor < ApplicationRecord
    has_one :vendorsweet
    has_one :sweet, through: :vendorsweet
end

class Sweet < ApplicationRecord
    has_one :vendorsweet
    has_one :vendor, through: :sweet
end

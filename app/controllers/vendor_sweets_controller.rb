class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = Vendor_sweet.new
        @sweets = Sweet.all
        @vendors = Vendor.all

        render :new
    end

    def create
        vendor_sweet = Vendor_sweet.create(vendor_sweet_params)

        redirect_to_vendor_path(vendor_sweet.vendor)
    end

    Private 
    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end

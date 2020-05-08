class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
        @vendors = Vendor.all 
        @sweets = Sweet.all
    end
    
    def create
        vendorsweet = VendorSweet.create(vendor_sweet_params)

        if @vendorsweet.valid?
            redirect_to vendor_path(vendor_id)
        else
            flash[:errors] = @vendorsweet.errors.full_messages

            redirect_to new_vendorsweet_path
        end
    end

    private

    def vendor_sweet_params
        params.require(:vendorsweet).permit(:price, :sweet_id, :vendor_id)
    end

end

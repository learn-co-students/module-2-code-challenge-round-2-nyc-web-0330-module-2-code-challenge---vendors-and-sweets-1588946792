class VendorSweetsController < ApplicationController
    
    def new
        @vendorsweet = VendorSweet.new
    
    end
    
    def create
        @vendorsweet = VendorSweet.create(vendor_params)
        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor_id)
       
    else
        flash[:my_errors] = @vendorsweet.errors.full_messages
        redirect_to new_vendor_sweet
    end
    end
    


    # def edit
    
    # end
    
    # def update
    
    # end
    
    # def show
    
    # end
    
    # def destroy
    
    # end
    private
   def vendor_params
    params.require(:vendor_sweet).permit(:vendor, :sweet)
   end
end

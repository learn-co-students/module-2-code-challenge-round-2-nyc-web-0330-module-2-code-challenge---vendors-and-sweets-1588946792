class VendorSweetsController < ApplicationController

    def index
        @vs = VendorSweet.all
    end

    def new
        @vs = VendorSweet.new
    end

    def create
        @vs = VendorSweet.create(vs_params)

        if @vs.valid?
            redirect_to vendor_path(@vs.vendor_id)
        else
            flash[:errors] = @vs.errors.full_messages
            redirect_to new_vendor_sweet_path
        end
    end

    private
    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end

class VendorsController < ApplicationController
before_action :find_vendor, only: :show
before_action :find_sweets
  
  def index
    @vendors = Vendor.all
  end

  def show
    #find_vendor
    @sweets = Sweet.first
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)

    if @vendor.valid?
      redirect_to vendor_path(@vendor)
    else
      redirect_to new_vendor_path
    end

  end

  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end

  def find_sweets
    @sweets = Sweet.all
  end

end

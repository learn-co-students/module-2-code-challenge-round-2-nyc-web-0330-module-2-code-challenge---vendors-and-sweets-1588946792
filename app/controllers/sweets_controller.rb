class SweetsController < ApplicationController
  before_action :find_vendor

  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.create(sweets_params)

    if @sweet.valid?
      redirect_to sweet_path(@sweet)
    else
      redirect_to new_sweet_path
    end
    
  end

  private

  def sweets_params
    params.require(:sweet).permit(:name)
  end

  def find_vendor
    @vendors = Vendor.all
  end

end

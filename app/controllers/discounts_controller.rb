class DiscountsController < ApplicationController

  def index
    @discounts = Discount.all
  end

  def new
    @discount = Discount.new
  end

  def create
    @discount = Discount.create(discount_params)
  end

  def destroy
    discount = Discount.find(params[:id])
    discount.destroy
  end
  private
  def discount_params
    params.require(:discount).permit(:price, :rate)
  end
end

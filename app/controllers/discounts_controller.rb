class DiscountsController < ApplicationController
  def new
    @discount = Discount.new
  end

  def create
    @discount = Discount.create(discount_params)
  end

  private
  def discount_params
    params.require(:discount).permit(:price, :rate)
  end
end

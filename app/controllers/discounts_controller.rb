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
    redirect_to action: :index
  end

  def edit
    @discount = Discount.find(params[:id])
  end

  def update
    @discount = Discount.find(params[:id])
    @discount.update(discount_params)
    redirect_to action: :index
  end

  private
  def discount_params
    params.require(:discount).permit(:price, :rate)
  end
end

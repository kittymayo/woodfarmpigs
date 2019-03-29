class BasketItemsController < ApplicationController
  def new
    @basket_item = BasketItem.new

  end

  def create
     @basket_item.product = Product.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def index
  end
end



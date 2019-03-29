class BasketItemsController < ApplicationController
  def new
    @basket_item = BasketItem.new
  end

  def create
   @basket_item.product = Product.find(params[:id])
     if @basket_item.save
      redirect_to category_products(@product)
    else
      render :new
    end
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


  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :description,
      :name,
      :price_cents,
      :category,
      :photo)
  end

end


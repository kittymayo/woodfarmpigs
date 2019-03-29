class BasketItemsController < ApplicationController
  before_action :find_product
  def new
    @basket_item = BasketItem.new
  end

  def create
    @basket_item = BasketItem.new(basket_item_params)
    @basket_item.product_id = @product.id
    if @basket_item.save
      redirect_to category_products_path(@category)
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
    @product = Product.find(params[:product_id])
    @category = Category.find(params[:category_id])
  end

  def basket_item_params
    params.require(:basket_item).permit(
      :product_id,
      :quantity
    )
  end
end

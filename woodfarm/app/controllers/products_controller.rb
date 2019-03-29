class ProductsController < ApplicationController

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @products = Product.all
    @category = Category.find(params[:category_id])
  end

  def show
    @category = Category.find(params[:category_id])
    @product = Product.find(params[:id])
  end
end

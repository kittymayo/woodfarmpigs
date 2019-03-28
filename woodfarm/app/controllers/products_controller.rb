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
    @products = Product.where(category: Category.find(params[:category_id]))
  end

  def show
  end
end

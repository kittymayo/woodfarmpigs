class Category < ApplicationRecord
  def index
    @categories = Category.all
  end
end

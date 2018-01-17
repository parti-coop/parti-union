class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def product_detail
    render "products/details/#{params[:slug]}"
  end
end

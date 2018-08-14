class ProductsController < ApplicationController

  def data
    @product = Product.find(params[:id])
    render json: ProductSerializer.serialize(@product)
    redirect_to product_path(@product)
  end

  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:id, :name, :description, :inventory, :price)
  end
end

class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    @product = Product.new(product_params)
    @product.save
    render json: @product
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    render json: @product
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: @product
  end

  private
    def product_params
      params.require(:product).permit(:name,:sku,:price)
    end
end

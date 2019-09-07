class ProductsController < ApplicationController

  def create
    @product = Product.create(product_params)
    @product.save
    redirect_to products_path
  end

  def inventory
     render plain: @product.inventory > 0
  end

  private
  def product_params
     params.require(:product).permit(:name, :description, :inventory)
   end

end

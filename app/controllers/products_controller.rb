class ProductsController < ApplicationController

	def index
		@products = Product.all
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

	def product_params
		params.require(:product).permit(:name, :description, :price)
	end
end

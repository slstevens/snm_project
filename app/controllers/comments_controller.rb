class CommentsController < ApplicationController

	def new
		@product = Product.find(params[:product_id])
		@comment = Comment.new
	end

	def create
		@product = Product.find(params[:product_id])
		@product.comments.create(comment_params)
		redirect_to product_path(@product)
	end

	def comment_params
		params.require(:comment).permit(:thoughts)
	end
end

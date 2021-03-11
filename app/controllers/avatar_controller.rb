class AvatarController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        @product.avatar.attach(params[:avatar])
        redirect_to(product_path(@product))
      end
end

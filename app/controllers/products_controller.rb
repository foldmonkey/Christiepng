class ProductsController < ApplicationController
  def index
  	@products = Product.where(nil)
    @products = @products.price_range(params[:from],params[:to]) if params[:from].present? || params[:to].present?
    filtering_params(params).each do |key, value|
      @products = @products.public_send(key, value) if value.present?
    end

    respond_to do |format|
      format.html
      format.js
    end 
  end

  def show
  	@product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
  	@product = Product.new(product_params)
    @product.user_id = current_user.id

  	if @product.save
  		redirect_to products_home_path
  	else	
  		render 'new'
  	end	
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
     @product = Product.find(params[:id])

      if @product.update(product_params)
        redirect_to "/products"
      else 
        render "edit"
      end
  end

  def destroy
  end	

  private
  def product_params
  	params.require(:product).permit(:description, :category, :color, :price, {image: []})
  end

  def filtering_params(params)
    params.slice(:category, :color, :price)
  end	
end
